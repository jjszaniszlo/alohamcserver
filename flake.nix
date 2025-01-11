{
  description = "Aloha Minecraft Network Nix Package";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    flux.url = "github:IogaMaster/flux";
    flux.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = {self, nixpkgs}: let
    supportedSystems = [
      "x86_64-linux"
    ];

    forAllSystems = nixpkgs.lib.genAttrs supportedSystems;
    pkgsFor = nixpkgs.legacyPackages;
  in {
    packages = forAllSystems (system: {
      survival = pkgsFor.${system}.callPackage ./survival.nix {};
      creative = pkgsFor.${system}.callPackage ./creative.nix {};
      proxy = pkgsFor.${system}.callPackage ./proxy.nix {};
    });
  };
}
