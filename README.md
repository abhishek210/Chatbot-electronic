Chatbot

There are a list of projects and the description of each of the project is provided, the goal of the Chatbot is to provide an easy access of the project details to the user. There is a button functionality where the user chooses the appropriate option which limits the project choices based on various parameters such as project type and functionality which helps eases out the searching process. There is an added functionality of searching the product via question answering, the user writes details of the projects and the chatbot interprets the projects from the text and outputs the most desirable project.

This project has been contributed by the following :-

Abhishek Rajgaria, Preyansh Rastogi, Shivam Shanker and Anuj Verma.

Images
It contains all the images that were used in the android application.

MainActivity.java
It handled the login functionality of the first page of the application.

SecondActivity.java
It handled the query handling of the user by contacting with the server in the backend on the second page of the application.

XML files
They were used in designing the various components of the application.

Backend Code
server.py
This file contains the code for connection between server and client and it is a local server and we are sending and receiving data through this.

backend.py
In this file we are connecting through the MySQL server on local computer and after connection we are fetching the data from the database and giving the desired result by making assiging the user's query among the given project options by using nltk pos-tags after processing the user's text.

chatbot_tools.sql
It contains all the tools for the specific project

chatbot_keyword_table.sql
It contains the keyword for the different projects

chatbot_description_table.sql
It contains the description of the projects
