#!/usr/bin/env python3
import os
import sys

import mecademicpy.robot as mdr

robot = mdr.Robot()

robot.Connect(address='192.168.0.100')
print('Connected to robot')

robot.ActivateRobot()
robot.Home()
print("Done Homing")



robot.MovePose(200, 0, 300, 0, 90, 0)    #### Home Position
#robot.MovePose(200, 0, 100, 0, 90, 0)

#robot.MoveLin(200, 0, 300, 0, 90, 0)    #### Home Position
#robot.MoveLin(200, 50, 300, 50, 90, 0)



# robot.DeactivateRobot()
