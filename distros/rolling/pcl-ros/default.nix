
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, eigen, geometry-msgs, launch, launch-ros, launch-testing, launch-testing-ros, pcl, pcl-conversions, rclcpp, rclcpp-components, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-pcl-ros";
  version = "2.6.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/perception_pcl-release/archive/release/rolling/pcl_ros/2.6.1-2.tar.gz";
    name = "2.6.1-2.tar.gz";
    sha256 = "ed24afb43e183514e90387323d629cc25624a64d380185c2325201b0f0488644";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-ros launch-testing launch-testing-ros sensor-msgs ];
  propagatedBuildInputs = [ eigen geometry-msgs pcl pcl-conversions rclcpp rclcpp-components sensor-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "PCL (Point Cloud Library) ROS interface stack. PCL-ROS is the preferred
  bridge for 3D applications involving n-D Point Clouds and 3D geometry
  processing in ROS.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
