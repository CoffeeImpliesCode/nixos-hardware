## Setup at the time of testing
```
$ nix-info -m
 - system: `"x86_64-linux"`
 - host os: `Linux 6.16.7-zen1, NixOS, 25.05 (Warbler), 25.05.20250925.25e53aa`
 - multi-user?: `yes`
 - sandbox: `yes`
 - version: `nix-env (Nix) 2.28.5`
 - channels(root): `"nixos-23.11"`
 - nixpkgs: `/nix/store/vsa2x9ddj2gw260mj0v2ww4iwfny17vf-source`
 ```
(nixpkgs on nixos-25.05)
 ```
 $ lspci
...
00:02.0 VGA compatible controller: Intel Corporation CoffeeLake-H GT2 [UHD Graphics 630]
...
01:00.0 VGA compatible controller: NVIDIA Corporation TU116M [GeForce GTX 1660 Ti Mobile] (rev a1)
...
```
