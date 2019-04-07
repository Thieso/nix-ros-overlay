
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, turtlebot-bringup, catkin, interactive-markers, visualization-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot-interactive-markers";
  version = "2.3.1";

  src = fetchurl {
    url = https://github.com/turtlebot-release/turtlebot_interactions-release/archive/release/kinetic/turtlebot_interactive_markers/2.3.1-0.tar.gz;
    sha256 = "f17cda78e7b855b25d058aab4cf8a6afff1daf9fd9b3dbe5ab61951bedcabfc6";
  };

  buildInputs = [ visualization-msgs interactive-markers roscpp ];
  propagatedBuildInputs = [ turtlebot-bringup visualization-msgs interactive-markers roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interactive control for the TurtleBot using RViz and interactive markers'';
    #license = lib.licenses.BSD;
  };
}