# Define all supported ROS distros

self: super: {
  rosPackages = rec {
    lib = super.lib // import ./lib { inherit self; };

    kinetic = import ./distro-overlay.nix {
      distro = "kinetic";
      python = self.python2;
    } self super;

    kineticPython3 = import ./distro-overlay.nix {
      distro = "kinetic";
      python = self.python3;
    } self super;

    lunar = import ./distro-overlay.nix {
      distro = "lunar";
      python = self.python2;
    } self super;

    melodic = import ./distro-overlay.nix {
      distro = "melodic";
      python = self.python2;
    } self super;

    melodicPython3 = import ./distro-overlay.nix {
      distro = "melodic";
      python = self.python3;
    } self super;

    crystal = import ./distro-overlay.nix {
      distro = "crystal";
      python = self.python3;
    } self super;

    dashing = import ./distro-overlay.nix {
      distro = "dashing";
      python = self.python3;
    } self super;
  };
}
