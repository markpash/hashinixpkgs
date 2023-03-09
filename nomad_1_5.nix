{ lib, buildGoModule, fetchFromGitHub }:

{
  nomad_1_5_0 = (import ./nomad.nix) {
    inherit lib buildGoModule fetchFromGitHub;
    version = "1.5.0";
    sha256 = "sha256-xaMt57g2TV+LG5NRmIvKqg/Ljf2BFcHayuxC+Fz/9Ys=";
    vendorSha256 = "sha256-qU1gpN9T3b+onWgs2lJ01Wc0zzWwyndbvoja6fZsXFE=";
  };
}
