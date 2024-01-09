{
  description = "Sylvain's nixos global flake configuration";

  inputs = {
    nixpkgs = {
      url = "github:NixOS/nixpkgs/nixos-23.11";
    };
  };

  outputs = { self, nixpkgs, ... }:
  let
    lib      = nixpkgs.lib;
    system   = "x86_64-linux";
    hostname = "nixos";
    timezone = "Europe/Paris";
    locale   = "fr_FR.UTF-8";
    editor   = "nvim";
  in {
    nixosConfigurations = {
      nixos = lib.nixosSystem {
        system = "x86_64-linux";
        modules = [ ./configuration.nix ]; 
      };
    };

  };
}
