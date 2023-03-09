{ lib, buildGoModule, fetchFromGitHub }:

{
  consul_1_13_7 = (import ./consul.nix) {
    inherit lib buildGoModule fetchFromGitHub;
    version = "1.13.7";
    sha256 = "sha256-i+95s9gFUvuCyciTj93URJxEGfs3TIzkS65UpXE8WIU=";
    vendorSha256 = "sha256-R/bzyS3HKM0C5+p8L0O9aiAz8N+SEoGUEvWcKf9XrmA=";
  };
  consul_1_13_6 = (import ./consul.nix) {
    inherit lib buildGoModule fetchFromGitHub;
    version = "1.13.6";
    sha256 = "sha256-jYWdrkcoHoBUHh+j85WDi2x4tmLxsMFsUD+fbYaRpIE=";
    vendorSha256 = "sha256-KGQp35M4iVJtQw6qKAHTePK5fqjpQN3YvQkdbN0gF8M=";
  };
  consul_1_13_5 = (import ./consul.nix) {
    inherit lib buildGoModule fetchFromGitHub;
    version = "1.13.5";
    sha256 = "sha256-peOCrLI+txAz0wDfKsHyJIhixhTNQobDLaZa28C/7TU=";
    vendorSha256 = "sha256-oOCum19r0gbB8pNVZbr+BGo9vfgvWE6rehRbNtxNOTQ=";
  };
  consul_1_13_4 = (import ./consul.nix) {
    inherit lib buildGoModule fetchFromGitHub;
    version = "1.13.4";
    sha256 = "sha256-lo3NAZOF5+lM3reN+izEfHA8LyIkrGGgWRLH3ZyC0Js=";
    vendorSha256 = "sha256-cfd1GSJtmOluBNGVGwaKr7fx6IR+psRWU4EJ8qmuFBY=";
  };
  consul_1_13_3 = (import ./consul.nix) {
    inherit lib buildGoModule fetchFromGitHub;
    version = "1.13.3";
    sha256 = "sha256-pTBeR7WP25Ng1OiVkZ60wTYnSOWahkx6LYHScnX0fWw=";
    vendorSha256 = "sha256-ZarkaUP9jwwP9FReaVAfPaQzKFETUEHsCsVDGFYKJvU=";
  };
  consul_1_13_2 = (import ./consul.nix) {
    inherit lib buildGoModule fetchFromGitHub;
    version = "1.13.2";
    sha256 = "sha256-+5I5hsVuLZve4FJHe41rKycWuKNv7UdxCSi4kaKk2/w=";
    vendorSha256 = "sha256-SjTG1/WhfGhLuUherVHEC3PmDz4HLMS2Cg0ReKTm0zk=";
  };
  consul_1_13_1 = (import ./consul.nix) {
    inherit lib buildGoModule fetchFromGitHub;
    version = "1.13.1";
    sha256 = "sha256-Svclb+tLb0gk3xhoslVvAZZf0LR2M5nR9BmMYLBBHck=";
    vendorSha256 = "sha256-bPfS8hoH45ad34CsR+9WLEDCDsx1E/ZKdipVZqirfDY=";
  };
  consul_1_13_0 = (import ./consul.nix) {
    inherit lib buildGoModule fetchFromGitHub;
    version = "1.13.0";
    sha256 = "sha256-bPLVQ5XvOk6cWtjHNtvZ3McM2SKVbjY6280rIldInpQ=";
    vendorSha256 = "sha256-bPfS8hoH45ad34CsR+9WLEDCDsx1E/ZKdipVZqirfDY=";
  };
}
