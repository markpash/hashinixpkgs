{ lib, buildGoModule, fetchFromGitHub }:

{
  consul_1_15_0 = (import ./consul.nix) {
    inherit lib buildGoModule fetchFromGitHub;
    version = "1.15.0";
    sha256 = "sha256-WJQHBSwmcJiUGt69DMMZxs+xEk3z+fadSHoHvxb48ZU=";
    vendorSha256 = "sha256-XwoZ/iwsZ/zXgPRGfBit5TO2NDS2pTEO0FT4KSUhJtA=";
  };
}
