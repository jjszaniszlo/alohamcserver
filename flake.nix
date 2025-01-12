{
  description = "Aloha Minecraft Network Nix Package";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    flux.url = "github:IogaMaster/flux";
    flux.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = {flux, nixpkgs, ...}: let
    supportedSystems = [
      "x86_64-linux"
    ];

    system = "x86_64-linux";

    pkgs = import nixpkgs {
      inherit system;
      overlays = [
        flux.overlays.default
      ];
    };

    forAllSystems = pkgs.lib.genAttrs supportedSystems;
  in {
    packages = forAllSystems (system: {
      survival = pkgs.callPackage ./survival.nix {};
      creative = pkgs.callPackage ./creative.nix {};
      proxy = pkgs.callPackage ./proxy.nix {};
    });
  };
}
