
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, rospy, std-msgs, genmsg }:
buildRosPackage {
  pname = "ros-kinetic-bhand-controller";
  version = "0.1.2";

  src = fetchurl {
    url = https://github.com/RobotnikAutomation/barrett_hand-release/archive/release/kinetic/bhand_controller/0.1.2-0.tar.gz;
    sha256 = "9d549005a71830ddb6024662bfc5e2202f9f5ca47b0c289964e0f6c0951d1378";
  };

  buildInputs = [ std-msgs genmsg sensor-msgs rospy ];
  propagatedBuildInputs = [ std-msgs genmsg sensor-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The bhand_controller package is intended to control the Barrett Hand'';
    #license = lib.licenses.BSD;
  };
}