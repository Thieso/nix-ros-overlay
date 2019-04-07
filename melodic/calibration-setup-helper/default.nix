
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, calibration-launch }:
buildRosPackage {
  pname = "ros-melodic-calibration-setup-helper";
  version = "0.10.14";

  src = fetchurl {
    url = https://github.com/ros-gbp/calibration-release/archive/release/melodic/calibration_setup_helper/0.10.14-0.tar.gz;
    sha256 = "860ae9436ebb32f82961749186b07d6d8c5f2885897baf629226b5e0db51b588";
  };

  propagatedBuildInputs = [ calibration-launch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a script to generate calibration launch and configurationfiles for your robot.
    which is based on Michael Ferguson's calibration code'';
    #license = lib.licenses.Apache 2.0;
  };
}