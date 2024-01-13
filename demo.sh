#!/bin/bash

/* In fact, it's pretty simple. 
You can access an argument inside a script using the variables $1, $2, $3, and so on.
The variable $1 refers to the first argument, $2 to the second argument, and $3 to the third argument.
So, in this case, since we only have 1 argument, we access it using the variable $1.
Then, we assign the value of the argument to the variable $ARG1. So, the $ARG1 variable will contain either forward, rotate, or stop. Finally, we check which one of them it contains (using the if statement), and we execute the corresponding ROS command (rostopic pub) in order to move the BB8 robot accordingly.

*/


ARG1=$1

function help(){
    echo "Please enter one of the following: forward, rotate, stop"
    echo
    echo "Example: ./demo.sh rotate"
    exit 1
}

if [ "$ARG1" == 'forward' ]; then
    rostopic pub /cmd_vel geometry_msgs/Twist "linear:
  x: -0.1
  y: 0.0
  z: 0.0
angular:
  x: 0.0
  y: 0.0
  z: 0.0"

elif [ "$ARG1" == 'rotate' ]; then
    rostopic pub /cmd_vel geometry_msgs/Twist "linear:
  x: 0.0
  y: 0.0
  z: 0.0
angular:
  x: 0.0
  y: 0.0
  z: 0.2"

elif [ "$ARG1" == 'stop' ]; then
    rostopic pub /cmd_vel geometry_msgs/Twist "linear:
  x: 0.0
  y: 0.0
  z: 0.0
angular:
  x: 0.0
  y: 0.0
  z: 0.0"

else
    echo "Oh, you didn't type the correct argument"
    help
fi
