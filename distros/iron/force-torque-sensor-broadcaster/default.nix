
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, controller-interface, controller-manager, generate-parameter-library, geometry-msgs, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-iron-force-torque-sensor-broadcaster";
  version = "3.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/iron/force_torque_sensor_broadcaster/3.11.0-1.tar.gz";
    name = "3.11.0-1.tar.gz";
    sha256 = "0232439ad174ea6f4730911b889f77212be59cc9749dd3d9e4a19601173c1a10";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock controller-manager ros2-control-test-assets ];
  propagatedBuildInputs = [ backward-ros controller-interface generate-parameter-library geometry-msgs hardware-interface pluginlib rclcpp rclcpp-lifecycle realtime-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Controller to publish state of force-torque sensors.'';
    license = with lib.licenses; [ asl20 ];
  };
}