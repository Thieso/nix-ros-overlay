
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, tf, pcl-conversions, rslidar-driver, catkin, sensor-msgs, tf2-ros, rostest, rslidar-msgs, roslib, nodelet, dynamic-reconfigure, angles, roslaunch, roscpp, pcl-ros }:
buildRosPackage {
  pname = "ros-melodic-rslidar-pointcloud";
  version = "1.0.2";

  src = fetchurl {
    url = https://github.com/CPFL/robosense-release/archive/release/melodic/rslidar_pointcloud/1.0.2-0.tar.gz;
    sha256 = "a6c848ebbe5c69d8458345fbb9c5fd54012a1a96130c1587ccf0b251de64aa75";
  };

  buildInputs = [ roslaunch pluginlib tf rslidar-driver sensor-msgs roscpp tf2-ros rostest rslidar-msgs nodelet pcl-ros angles dynamic-reconfigure roslib pcl-conversions ];
  propagatedBuildInputs = [ pluginlib tf rslidar-driver sensor-msgs roscpp rslidar-msgs nodelet pcl-ros angles dynamic-reconfigure roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Point cloud conversions for rslidar 3D LIDARs.'';
    #license = lib.licenses.BSD;
  };
}