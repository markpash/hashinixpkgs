{
  description = "hashinixpkgs";

  inputs.nixpkgs.url = "nixpkgs/nixos-unstable";
  inputs.flake-parts.url = "github:hercules-ci/flake-parts";

  outputs = inputs@{ flake-parts, ... }: flake-parts.lib.mkFlake { inherit inputs; } {
    flake = { };
    systems = [ "x86_64-linux" "aarch64-linux" ];
    perSystem = { pkgs, lib, ... }: {
      packages =
        let
          buildGoModule = (pkgs.buildGoModule.override {
            go = pkgs.buildPackages.go_1_25;
          });
          fetchFromGitHub = pkgs.fetchFromGitHub;
        in
        ((import ./nomad_versions.nix) { inherit lib buildGoModule fetchFromGitHub; }) //
        ((import ./consul_versions.nix) { inherit lib buildGoModule fetchFromGitHub; });
    };
  };

  nixConfig = {
    extra-substituters = [
      "https://nix-community.cachix.org"
      "https://cache.nixos.org/"
      "https://cache.garnix.io/"
    ];
    extra-trusted-public-keys = [
      "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
      "cache.garnix.io:CTFPyKSLcx5RMJKfLo5EEPUObbA78b0YQ2DTCJXqr9g="
    ];
  };
}
