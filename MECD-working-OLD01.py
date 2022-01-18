import socket
import time

robotConnected = True

try:
    client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
except socket.error:
    print('Failed to create socket')
    sys.exit()
print('//Socket Created')
        








def connect(ip="192.168.0.100"):
    if robotConnected:
        ROBOT_IP= "192.168.0.100"
        ROBOT_PORT = 10000
        #Connect the socket object to the robot using IP address (string) and port (int)
        client.connect((ROBOT_IP,ROBOT_PORT))

        print('Socket Connected to ' + ROBOT_IP )
        #Read the response sent by robot upon connecting
        msg = client.recv(1024).decode('ascii')
        print(msg)        

def activate():
    cmd = "ActivateRobot"
    sendCommand(cmd)

def deactivate():
    cmd = "DeactivateRobot"
    sendCommand(cmd)
        

def home():    
    cmd = "Home"
    sendCommand(cmd)


def getJoints():
    cmd="GetJoints"
    sendCommand(cmd)


def getPose():
    cmd="GetPose"
    sendCommand(cmd)

def moveJoints(a):
    cmd="MoveJoints(" + str(a[0]) + ","  + str(a[1]) + ","  + str(a[2]) + ","  + str(a[3]) + ","  + str(a[4]) + ","  + str(a[5]) + ")"
    sendCommand(cmd)
    
def movePose(a):
    cmd="MovePose(" + str(a[0]) + ","  + str(a[1]) + ","  + str(a[2]) + ","  + str(a[3]) + ","  + str(a[4]) + ","  + str(a[5]) + ")"
    sendCommand(cmd)

def sendCommand(cmd):
    if robotConnected:
        try:
            client.send(bytes(cmd+'\0','ascii'))
            time.sleep(1)
            msg = client.recv(1024).decode('ascii')
            print(msg)            
        except socket.error:
            print('Failed to send data')
    else:
        print(cmd)
    

connect()
activate()
home()
a= [0,0,0,0,0,0]
moveJoints(a)
a= [0,-60,60,0,0,0]
moveJoints(a)
getPose()
getJoints()
deactivate()

