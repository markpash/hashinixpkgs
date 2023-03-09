{ lib, buildGoModule, fetchFromGitHub }:

{
  nomad_1_4_5 = (import ./nomad.nix) {
    inherit lib buildGoModule fetchFromGitHub;
    version = "1.4.5";
    sha256 = "sha256-cUPzqq/lsow9NNCpkGJLzstcbYs79ADtxlY3B5G3oYE=";
    vendorSha256 = "sha256-ibpThg85v6F9Z0h5QuzAuRVqqd1Wn5ndjqI8jDANi2U=";
  };
  nomad_1_4_4 = (import ./nomad.nix) {
    inherit lib buildGoModule fetchFromGitHub;
    version = "1.4.4";
    sha256 = "sha256-mAimuWolTJ3lMY/ArnLZFu+GZv9ADdGsriXsTcEgdYc=";
    vendorSha256 = "sha256-QtP7pzsIBd2S79AUcbOeVG71Mb5qK706rq5DkT41VqM=";
  };
  nomad_1_4_3 = (import ./nomad.nix) {
    inherit lib buildGoModule fetchFromGitHub;
    version = "1.4.3";
    sha256 = "sha256-GQVfrn9VlzfdIj73W3hBpHcevsXZcb6Uj808HUCZUUg=";
    vendorSha256 = "sha256-JQRpsQhq5r/QcgFwtnptmvnjBEhdCFrXFrTKkJioL3A=";
  };
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
