import socket 

host = 'localhost' 
port = 1337 
size = 1024 
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM) 
s.connect((host,port)) 
s.send(raw_input()) 
data = s.recv(size) 
s.close() 
print 'Received:', data