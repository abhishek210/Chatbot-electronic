# main server file for the code
# from try004 import testerstring
import socket
import sys
from threading import *
from main import working
from try002 import category
from p003 import *


s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
HOST = "192.168.52.41"
PORT = 8888
print(HOST)
print(PORT)
# serversocket.bind((host,port))


try:
	s.bind((HOST,PORT))
except socket.error as err:
	s.close()
	print ('Bind Failed, Error Code: '+ str(err[0])+', Message: '+err[1])
	sys.exit()



class client(Thread):
	def __init__(self,socket,address):
		Thread.__init__(self)
		self.sock = socket
		self.addr = address
		self.start()
	def run(self):
		# while True:
		print ('Connect with ' + self.addr[0]+':'+str(self.addr[1]))
		# print('Client sent: ',self.sock.recv(1024).decode()

		datarecievd = self.sock.recv(1024).decode()
		print(datarecievd)
		# datarecievd =  datarecievd.lower()
		# r = "5#I have recieved your request\n"
		r = solveQuery(datarecievd)
		# r = working(datarecievd)
		print(r)
		self.sock.send(r.encode())
		print("the data is already send")
		# self.sock.close()
		self.sock.close()

threads = []
print ('Socket Bind Success!')

s.listen(10)
print ('Socket Bind Success!')
print('server started and listening')
while True:
	(clientsocket,address) = s.accept()
	# print("hello")
	client(clientsocket,address).join()

	# newthread.start()
	# threads.append(newthread)
	# threads