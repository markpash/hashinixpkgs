{ lib, buildGoModule, fetchFromGitHub }:

{
  nomad_1_3_9 = (import ./nomad.nix) {
    inherit lib buildGoModule fetchFromGitHub;
    version = "1.3.9";
    sha256 = "sha256-xfoIzLDG/OfqAPQqeLvQZ11uESWFNyOyLP6Imi+S96w=";
    vendorSha256 = "sha256-kW0goicoM1lM1NEHPTfozg2EKR1daf33UxT/mVabyfY=";
  };
  nomad_1_3_8 = (import ./nomad.nix) {
    inherit lib buildGoModule fetchFromGitHub;
    version = "1.3.8";
    sha256 = "sha256-hUmDWgGV8HAXew8SpcbhaiaF9VfBN5mk1W7t5lhnZ9I=";
    vendorSha256 = "sha256-IfYobyDFriOldJnNfRK0QVKBfttoZZ1iOkt4cBQxd00=";
  };
  nomad_1_3_7 = (import ./nomad.nix) {
    inherit lib buildGoModule fetchFromGitHub;
    version = "1.3.7";
    sha256 = "sha256-hMMR7PdCViZdePXy9aFqTFBxoiuuXqIldXyCGkkr5MA=";
    vendorSha256 = "sha256-unw2/E048jzDHj7glXc61UNZIr930UpU9RrXI6DByj4=";
  };
  nomad_1_3_6 = (import ./nomad.nix) {
    inherit lib buildGoModule fetchFromGitHub;
    version = "1.3.6";
    sha256 = "sha256-E1+QFaakAsqeXxAfY80ExWVIud7Q/q2TaUVsmADjsgo=";
    vendorSha256 = "sha256-kgTRjPr7GsoBeE/s9wrmUWE5jv1ZmszfVDsVaRbdx14=";
  };
  nomad_1_3_5 = (import ./nomad.nix) {
    inherit lib buildGoModule fetchFromGitHub;
    version = "1.3.5";
    sha256 = "sha256-WKS7EfZxysy/oyq1fa8rKvmfgHRiB7adSVhALZNFYgo=";
    vendorSha256 = "sha256-byc6wAxpqhxlN3kyHyFQeBS9/oIjHeoz6ldYskizgaI=";
  };
  nomad_1_3_4 = (import ./nomad.nix) {
    inherit lib buildGoModule fetchFromGitHub;
    version = "1.3.4";
    sha256 = "sha256-NeBZVCpylP16dPi68unk3H3/V6gWO/SvJRmjgwwwVts=";
    vendorSha256 = "sha256-XIHtAB0js55mbVuTTWdLW5BMhQjd6/GUbcBk8DEYZg8=";
  };
  nomad_1_3_3 = (import ./nomad.nix) {
    inherit lib buildGoModule fetchFromGitHub;
    version = "1.3.3";
    sha256 = "sha256-/63QGknivXyBel2MhMzbh/rE+UrfV3mb+zPZzOU15WU=";
    vendorSha256 = "sha256-5ubJ6hgpdkZd/hwy+u2S6XgQLD5xmgUnaUqJoLdguBQ=";
  };
  nomad_1_3_2 = (import ./nomad.nix) {
    inherit lib buildGoModule fetchFromGitHub;
    version = "1.3.2";
    sha256 = "sha256-GJul7slXNLEp+3l3OQ43ALVH3IscoCDDL7FG2UFtLG8=";
    vendorSha256 = "sha256-MqtkYHGIgeCFnbwE09xHgPMuJBSVHL0hB9RbwNX+K40=";
  };
  nomad_1_3_1 = (import ./nomad.nix) {
    inherit lib buildGoModule fetchFromGitHub;
    version = "1.3.1";
    sha256 = "sha256-p0pkOlPjDYcMV7XAhEbUO8PE0wNqAjTmgtv+XiCGkw0=";
    vendorSha256 = "sha256-8LkJi+MwmLQkL/ZXWOGhJk6tIAmsJm/qBFhkglVvZSI=";
  };
  nomad_1_3_0 = (import ./nomad.nix) {
    inherit lib buildGoModule fetchFromGitHub;
    version = "1.3.0";
    sha256 = "sha256-yt6hyR2WBHwSWKugKSqKP2dQeUtXOxHdN/kUQeV5GiU=";
    vendorSha256 = "sha256-rGw84mWqVatYiEYi8biftilDtD7iwPOhqPOh7e1r6ww=";
  };
}
