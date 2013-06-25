#!/usr/bin/env sh

# Load controllers for joint1 and joint2
echo "Loading controllers..."
rosservice call /parallel/ros_control/controller_manager/load_controller "name: 'joint1_position_controller'"
rosservice call /parallel/ros_control/controller_manager/load_controller "name: 'joint2_position_controller'"
rosservice call /parallel/ros_control/controller_manager/load_controller "name: 'joint3_position_controller'"
rosservice call /parallel/ros_control/controller_manager/load_controller "name: 'joint4_position_controller'"
rosservice call /parallel/ros_control/controller_manager/load_controller "name: 'joint5_position_controller'"


# Start position controllers for the two joints
echo "Starting controllers..."
rosservice call /parallel/ros_control/controller_manager/switch_controller "{start_controllers:
['joint1_position_controller',
'joint2_position_controller',
'joint3_position_controller',
'joint4_position_controller',
'joint5_position_controller',
], stop_controllers: [], strictness: 0}" 

# Send commands to each of the joints
echo "Sending position command to joint1..."
rostopic pub /parallel/ros_control/joint1_position_controller/command std_msgs/Float64 "data: 1.5" --once
echo "Sending position command to joint2..."
rostopic pub /parallel/ros_control/joint2_position_controller/command std_msgs/Float64 "data: 1.0" --once
echo "Sending position command to joint3..."
rostopic pub /parallel/ros_control/joint3_position_controller/command std_msgs/Float64 "data: 1.0" --once
echo "Sending position command to joint4..."
rostopic pub /parallel/ros_control/joint4_position_controller/command std_msgs/Float64 "data: 1.0" --once
echo "Sending position command to joint5..."
rostopic pub /parallel/ros_control/joint5_position_controller/command std_msgs/Float64 "data: 1.0" --once


