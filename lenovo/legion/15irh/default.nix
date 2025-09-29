{ lib, ... }:

{
  imports = [
    ../../../common/cpu/intel/coffee-lake
    ../../../common/gpu/nvidia/prime.nix
    ../../../common/gpu/nvidia/turing
    ../../../common/pc/laptop
    ../../../common/pc/ssd
    ../../../common/pc/laptop/hdd
    ../../../common/hidpi.nix
  ];

  boot.initrd.kernelModules = [ "nvidia" ];
  boot.extraModulePackages = [
    config.boot.kernelPackages.lenovo-legion-module
    config.boot.kernelPackages.nvidia_x11
  ];

  hardware = {
    nvidia = {
      modesetting.enable = lib.mkDefault true;
      powerManagement.enable = lib.mkDefault true;

      prime = {
        intelBusId = "PCI:0:2:0";
        nvidiaBusId = "PCI:1:0:0";
      };
    };
  };

  services.thermald.enable = lib.mkDefault true;
}
