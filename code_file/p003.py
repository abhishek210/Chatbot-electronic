import nltk
import mysql.connector
from mysql.connector.cursor import MySQLCursorPrepared
# from spellchecker import SpellChecker

# spell = SpellChecker(distance=1)
from mysql.connector import errorcode
from mysql.connector import (connection)
try:
    mySQLConnection = mysql.connector.connect(host='127.0.0.1',
                                             database='dbname',
                                             user='root',
                                             password='hello210',
                                             use_pure = True)
    cursor = mySQLConnection.cursor(prepared=True)
    
except mysql.connector.Error as error:
    print("Failed to get record from database: {}".format(error))
     
def solveQuery(s) :
    query = getQuery(s)
    ans = resolveQuery(query)
    output = answerQuery(ans)
    return output

def isQuery(query) :
    if len (query) == 0 :
        return False
    return True

def getQuery(s) :
    s = s.split('#')
    query = s
    return query

    
def resolveQuery(query) :
    ans = []
    level = int(query[0])
    ans = [str(level+1)]
    #print (level)
    if level == 0 :
        ans.append ('What are the Different Types of Projects')
      
    elif level == 1 :
    	print ("fdsfd")
    	ans.extend(getCategories())        

    elif level == 2 :
       	category = query[2]
        ans.extend(getProjects(category))

    elif level == 3 :
        ans.extend (['Description','Tools','Link'])

    elif level == 4 :
        question,choice = query[1:]
        ans.extend(getData(question,choice))
        
    elif level == 5 :

        input = query[1].lower()
        if ('bye' in input) or ('okay' in input) or ('thank' in input):
            ans[0] = '7'
            ans.append('Contact below for any other queries 8860386363 PS: only available in night')
        else :
            keywords = generateKeyword(input)
            #print (keywords)
            projects = []
            categories = getCategories()
            for a in categories :
                projects.extend(getProjects(a))
            maxcount = 0 
            index = -1
            #print (projects)
            for a in range(len(projects)) :
                count = 0
                des = getData(projects[a],'Description')
                #print (des)
                project_keywords = generateKeyword(des[0])
                #print (project_keywords)
                for b in keywords :
                    if b in project_keywords : 
                        count+=1
                    
                if count > maxcount :
                    index = a
                    maxcount = count
            if maxcount == 0 : 
            	ans[0] = '7'
            else  :
                ans.append(projects[index])
    return ans 


def getCategories() :
    imp = []
    command = "SELECT DISTINCT Category FROM dbname.description_table"
    cursor.execute(command)
    record = cursor.fetchall()
    for row in record :
        imp.append (row[0])
    return imp

def getProjects(category) : 
    imp = []
    command = "SELECT Question FROM dbname.description_table WHERE Category=?;"
    cursor.execute(command,[category])
    record = cursor.fetchall()
    for row in record:
        imp.append (row[0])
    return imp

def getData(question,choice):
    imp = []
    command = ''
    if choice == 'Tools'  :
        command = "SELECT tool_name FROM dbname.tools WHERE Question=?;"
    elif choice == 'Description':
        command = "SELECT Description FROM dbname.description_table WHERE Question=?;"
    elif choice == 'Link':
        command = "SELECT Link FROM dbname.description_table WHERE Question=?;"
    cursor.execute(command,[question])
    record = cursor.fetchall()
    for row in  record:
        imp.append(row[0])
    return imp



def insertKeyword(word,question) :         
    sql_insert_query = """ INSERT INTO dbname.keyword_table (Keyword,Question,SL_NO) 
                       VALUES (%s,%s,%s) """
    command  = "SELECT COUNT(*) FROM dbname.keyword_table"
    cursor.execute(command)
    record = int(cursor.fetchone()[0])+1
    
    record_to_insert=[(word,question,record)]
    result  = cursor.executemany(sql_insert_query, record_to_insert)
    mySQLConnection.commit()

def getKeyword(question) :
    command =  "SELECT DISTINCT Keyword FROM dbname.keyword_table WHERE Question=?;"
    cursor.execute(command,[question])
    record = cursor.fetchall()
    for row in record :
        ans.append(row[0])

def generateKeyword(input) :
	sentences = nltk.sent_tokenize(input)
	a =  []
	for c in sentences : 
		a.extend(list(nltk.pos_tag(nltk.word_tokenize(c.lower()))))
	b = [list(d) for d in a]
	keywords = []
	check = ['NN','NNS','NNP','NNPS','JJ','JJS','JJR']
	for i in b :
	    if (i[1]in check) and (i[0] not in keywords) :
	        keywords.append(i[0])
	return keywords

def insertProjectKeywords(question) :
    description = getData(question,'Description')
    #print (description)
    keywords = generateKeyword(description[0])
    for i in keywords :
        insertKeyword(i,question)

def answerQuery(ans):
    s = '#'.join(ans)
    return s

