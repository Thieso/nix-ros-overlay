
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, boost, catkin, cob-frame-tracker, cob-script-server, cob-srvs, cob-twist-controller, geometry-msgs, message-generation, message-runtime, robot-state-publisher, roscpp, roslint, rospy, rviz, std-msgs, std-srvs, tf, topic-tools, visualization-msgs, xacro }:
buildRosPackage {
  pname = "ros-kinetic-cob-cartesian-controller";
  version = "0.7.12-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_cartesian_controller/0.7.12-1.tar.gz";
    name = "0.7.12-1.tar.gz";
    sha256 = "989d32111a1bc9ce22e8d01b9b5e0fb9eeff0a32a2398cbfaf2e1717c2965d3d";
  };

  buildType = "catkin";
  buildInputs = [ message-generation roslint ];
  propagatedBuildInputs = [ actionlib actionlib-msgs boost cob-frame-tracker cob-script-server cob-srvs cob-twist-controller geometry-msgs message-runtime robot-state-publisher roscpp rospy rviz std-msgs std-srvs tf topic-tools visualization-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides nodes that broadcast tf-frames along various (model-based) Cartesian paths (e.g. Linear, Circular).
    The tf-frames are interpolated using a given velocity profile (e.g. Ramp, Sinoid) and can be used as targets for the cob_frame_tracker/cob_twist_controller.'';
    license = with lib.licenses; [ asl20 ];
  };
}
