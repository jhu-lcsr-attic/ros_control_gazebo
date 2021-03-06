ros_control_gazebo_plugin
=========================

This package provides tools for using `ros_control`-based controllers in the
Gazebo simulator along with the `ros_control` controller manager.

Plugins
-------

### ros_control_gazebo_plugin

The `<plugin>` tag has the following required elements:
 * `<robotSimType>`: The pluginlib name of the robot sim interface to be used
 * `<controlPeriod>`: The period of the controller update (in seconds)

It also has the following optional elements:
 * `<ns>`: The ROS namespace to be used for this instance of the plugin

The controller plugin can be specified by adding the following to your URDF or SDF:

```xml
<gazebo>
  <plugin name="ros_control" filename="libros_control_gazebo_plugin.so">
    <ns>rr/ros_control</ns>
    <robotSimType>ros_control_gazebo_tests/RobotSimRR</robotSimType>
    <controlPeriod>0.001</controlPeriod>
  </plugin>
</gazebo>
```
