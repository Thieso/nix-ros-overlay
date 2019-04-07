
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, pythonPackages, orocos-kdl }:
buildRosPackage {
  pname = "ros-melodic-python-orocos-kdl";
  version = "1.4.0";

  src = fetchurl {
    url = https://github.com/orocos/orocos-kdl-release/archive/release/melodic/python_orocos_kdl/1.4.0-0.tar.gz;
    sha256 = "e2f7f6fafccaf26d88863ac50b826301c14db71f61e4caff757a482e304a62a0";
  };

  buildInputs = [ pythonPackages.sip orocos-kdl ];
  propagatedBuildInputs = [ catkin orocos-kdl pythonPackages.sip ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''This package contains the python bindings PyKDL for the Kinematics and Dynamics
    Library (KDL), distributed by the Orocos Project.'';
    #license = lib.licenses.LGPL;
  };
}