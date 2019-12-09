
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-uncrustify, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-core, ament-cmake-copyright }:
buildRosPackage {
  pname = "ros-eloquent-ament-cmake-uncrustify";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/eloquent/ament_cmake_uncrustify/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "3a20238ca394476120d103eb0d25b89caa6827f3227eae02563ef451214d9fd8";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-copyright ];
  propagatedBuildInputs = [ ament-cmake-test ament-uncrustify ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ];

  meta = {
    description = ''The CMake API for ament_uncrustify to check code against styleconventions
    using uncrustify.'';
    license = with lib.licenses; [ asl20 ];
  };
}