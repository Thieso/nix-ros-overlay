
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, catkin, roscpp, interactive-markers, roslaunch, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-interactive-marker-twist-server";
  version = "1.2.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/interactive_marker_twist_server-release/archive/release/kinetic/interactive_marker_twist_server/1.2.0-0.tar.gz;
    sha256 = "af453490a78b550877d0ec79593922b0c8810e3716b3bb72d242e10db0e21969";
  };

  buildInputs = [ visualization-msgs interactive-markers roscpp ];
  checkInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ visualization-msgs interactive-markers roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interactive control for generic Twist-based robots using interactive markers'';
    #license = lib.licenses.BSD;
  };
}