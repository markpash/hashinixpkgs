{ lib, buildGoModule, fetchFromGitHub }:

{
  nomad_1_4_2 = (import ./nomad.nix) {
    inherit lib buildGoModule fetchFromGitHub;
    version = "1.4.2";
    sha256 = "sha256-GGLy/6FgMTSZ701F0QGwcw1EFZSUMyPOlokThOTtdJg=";
    vendorSha256 = "sha256-dd8rTGcO4GVMRuABwT4HeucZqYKxrgRUkua/bSPLNH0=";
  };
  nomad_1_4_1 = (import ./nomad.nix) {
    inherit lib buildGoModule fetchFromGitHub;
    version = "1.4.1";
    sha256 = "sha256-LQ/fypao6Amun9MY5FRCRasxqnywzI5gpzcO2PPJdWg=";
    vendorSha256 = "sha256-kfT2UGC8Wl7CM9lOU75UqKc0/O1okGCoGDpmQntakbU=";
  };
  nomad_1_4_0 = (import ./nomad.nix) {
    inherit lib buildGoModule fetchFromGitHub;
    version = "1.4.0";
    sha256 = "sha256-iAAnXhJdfgBsuBsuIkFQB4AbTplX3HJuf5HfUGAUEeM=";
    vendorSha256 = "sha256-kfT2UGC8Wl7CM9lOU75UqKc0/O1okGCoGDpmQntakbU=";
  };
}
