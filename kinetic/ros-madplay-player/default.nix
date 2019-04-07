
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, catkin, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-ros-madplay-player";
  version = "0.1.3";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/ROBOTIS-Utility-release/archive/release/kinetic/ros_madplay_player/0.1.3-0.tar.gz;
    sha256 = "1a679a787d02e1a640cb0c56d554f6844523abdf4ecdb8037835f34e2ad1f5a0";
  };

  buildInputs = [ std-msgs roscpp ];
  propagatedBuildInputs = [ std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is a node that can playing mp3 file.
    This package is using madplay which is command-line mp3 player.'';
    #license = lib.licenses.Apache 2.0;
  };
}