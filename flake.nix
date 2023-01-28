{
  description = "hashinixpkgs";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/master";
  inputs.flake-parts.url = "github:hercules-ci/flake-parts";

  outputs = inputs@{ flake-parts, ... }: flake-parts.lib.mkFlake { inherit inputs; } {
    flake = { };
    systems = [ "x86_64-linux" "aarch64-linux" ];
    perSystem = { pkgs, lib, buildGoModule, fetchFromGitHub, ... }: {
      packages = let buildGoModule = pkgs.buildGoModule; fetchFromGitHub = pkgs.fetchFromGitHub; in {
        nomad_1_4_3 = ((import ./nomad_1_4.nix) { inherit lib buildGoModule fetchFromGitHub; }).nomad_1_4_3;
        nomad_1_4_2 = ((import ./nomad_1_4.nix) { inherit lib buildGoModule fetchFromGitHub; }).nomad_1_4_2;
        nomad_1_4_1 = ((import ./nomad_1_4.nix) { inherit lib buildGoModule fetchFromGitHub; }).nomad_1_4_1;
        nomad_1_4_0 = ((import ./nomad_1_4.nix) { inherit lib buildGoModule fetchFromGitHub; }).nomad_1_4_0;

        nomad_1_3_8 = ((import ./nomad_1_3.nix) { inherit lib buildGoModule fetchFromGitHub; }).nomad_1_3_8;
        nomad_1_3_7 = ((import ./nomad_1_3.nix) { inherit lib buildGoModule fetchFromGitHub; }).nomad_1_3_7;
        nomad_1_3_6 = ((import ./nomad_1_3.nix) { inherit lib buildGoModule fetchFromGitHub; }).nomad_1_3_6;
        nomad_1_3_5 = ((import ./nomad_1_3.nix) { inherit lib buildGoModule fetchFromGitHub; }).nomad_1_3_5;
        nomad_1_3_4 = ((import ./nomad_1_3.nix) { inherit lib buildGoModule fetchFromGitHub; }).nomad_1_3_4;
        nomad_1_3_3 = ((import ./nomad_1_3.nix) { inherit lib buildGoModule fetchFromGitHub; }).nomad_1_3_3;
        nomad_1_3_2 = ((import ./nomad_1_3.nix) { inherit lib buildGoModule fetchFromGitHub; }).nomad_1_3_2;
        nomad_1_3_1 = ((import ./nomad_1_3.nix) { inherit lib buildGoModule fetchFromGitHub; }).nomad_1_3_1;
        nomad_1_3_0 = ((import ./nomad_1_3.nix) { inherit lib buildGoModule fetchFromGitHub; }).nomad_1_3_0;

        consul_1_14_4 = ((import ./consul_1_14.nix) { inherit lib buildGoModule fetchFromGitHub; }).consul_1_14_4;
        consul_1_14_3 = ((import ./consul_1_14.nix) { inherit lib buildGoModule fetchFromGitHub; }).consul_1_14_3;
        consul_1_14_2 = ((import ./consul_1_14.nix) { inherit lib buildGoModule fetchFromGitHub; }).consul_1_14_2;
        consul_1_14_1 = ((import ./consul_1_14.nix) { inherit lib buildGoModule fetchFromGitHub; }).consul_1_14_1;
        consul_1_14_0 = ((import ./consul_1_14.nix) { inherit lib buildGoModule fetchFromGitHub; }).consul_1_14_0;

        consul_1_13_6 = ((import ./consul_1_13.nix) { inherit lib buildGoModule fetchFromGitHub; }).consul_1_13_6;
        consul_1_13_5 = ((import ./consul_1_13.nix) { inherit lib buildGoModule fetchFromGitHub; }).consul_1_13_5;
        consul_1_13_4 = ((import ./consul_1_13.nix) { inherit lib buildGoModule fetchFromGitHub; }).consul_1_13_4;
        consul_1_13_3 = ((import ./consul_1_13.nix) { inherit lib buildGoModule fetchFromGitHub; }).consul_1_13_3;
        consul_1_13_2 = ((import ./consul_1_13.nix) { inherit lib buildGoModule fetchFromGitHub; }).consul_1_13_2;
        consul_1_13_1 = ((import ./consul_1_13.nix) { inherit lib buildGoModule fetchFromGitHub; }).consul_1_13_1;
        consul_1_13_0 = ((import ./consul_1_13.nix) { inherit lib buildGoModule fetchFromGitHub; }).consul_1_13_0;

        consul_1_12_9 = ((import ./consul_1_12.nix) { inherit lib buildGoModule fetchFromGitHub; }).consul_1_12_9;
        consul_1_12_8 = ((import ./consul_1_12.nix) { inherit lib buildGoModule fetchFromGitHub; }).consul_1_12_8;
        consul_1_12_7 = ((import ./consul_1_12.nix) { inherit lib buildGoModule fetchFromGitHub; }).consul_1_12_7;
        consul_1_12_6 = ((import ./consul_1_12.nix) { inherit lib buildGoModule fetchFromGitHub; }).consul_1_12_6;
        consul_1_12_5 = ((import ./consul_1_12.nix) { inherit lib buildGoModule fetchFromGitHub; }).consul_1_12_5;
        consul_1_12_4 = ((import ./consul_1_12.nix) { inherit lib buildGoModule fetchFromGitHub; }).consul_1_12_4;
        consul_1_12_3 = ((import ./consul_1_12.nix) { inherit lib buildGoModule fetchFromGitHub; }).consul_1_12_3;
        consul_1_12_2 = ((import ./consul_1_12.nix) { inherit lib buildGoModule fetchFromGitHub; }).consul_1_12_2;
        consul_1_12_1 = ((import ./consul_1_12.nix) { inherit lib buildGoModule fetchFromGitHub; }).consul_1_12_1;
        consul_1_12_0 = ((import ./consul_1_12.nix) { inherit lib buildGoModule fetchFromGitHub; }).consul_1_12_0;
      };
    };
  };

  nixConfig = {
    extra-substituters = "https://cache.garnix.io/";
    extra-trusted-public-keys = "cache.garnix.io:CTFPyKSLcx5RMJKfLo5EEPUObbA78b0YQ2DTCJXqr9g=";
  };
}
