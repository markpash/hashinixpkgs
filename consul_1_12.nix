{ lib, buildGoModule, fetchFromGitHub }:

{
  consul_1_12_9 = (import ./consul.nix) {
    inherit lib buildGoModule fetchFromGitHub;
    version = "1.12.9";
    sha256 = "sha256-OEgSqa7+sZGHzx5PiG5otLH1p6yo5CMhEssisYt9cKQ=";
    vendorSha256 = "sha256-P1GYqJdPt0esd6oacAh8w7Pvo0cKaQ1zFy8UMCENpTw=";
  };
  consul_1_12_8 = (import ./consul.nix) {
    inherit lib buildGoModule fetchFromGitHub;
    version = "1.12.8";
    sha256 = "sha256-aOA+Hw3hcpLt8qiNfZDFP+i3sLw4jF89Yw+1vMkhjqI=";
    vendorSha256 = "sha256-kLXxNhyOS36RlHtvOnOoLQLv8qfoCZD2XXepkDpBqfM=";
  };
  consul_1_12_7 = (import ./consul.nix) {
    inherit lib buildGoModule fetchFromGitHub;
    version = "1.12.7";
    sha256 = "sha256-I14sTX9ISMMVHmveDlfN90GNk81b8VY1w1ZBqyq14N0=";
    vendorSha256 = "sha256-8Es4V5kTi/FOv2cY4whtzfUkliuRCjWVKy+K3J987H4=";
  };
  consul_1_12_6 = (import ./consul.nix) {
    inherit lib buildGoModule fetchFromGitHub;
    version = "1.12.6";
    sha256 = "sha256-ap4yLR0k+mtOijOolVfhuimCRENB5IxQNHxA0h7jgm0=";
    vendorSha256 = "sha256-p7YJwY87TdtUdd6GvWe2ORNw4lyz24ST5Q5EcDJlFig=";
  };
  consul_1_12_5 = (import ./consul.nix) {
    inherit lib buildGoModule fetchFromGitHub;
    version = "1.12.5";
    sha256 = "sha256-mAkYaxxXLQevBsmPHMSrVYE4wEew26q292zokR+SINo=";
    vendorSha256 = "sha256-8+6zGvKbnGtcZ1ageSenBUnqAdZiw9+5E9JzHGnyqOY=";
  };
  consul_1_12_4 = (import ./consul.nix) {
    inherit lib buildGoModule fetchFromGitHub;
    version = "1.12.4";
    sha256 = "sha256-bRNPPIF1WC0tTiACo/YgL99nDdh4sWag0X+Rczjyxds=";
    vendorSha256 = "sha256-8PmjHAr9QLkeEpc5/+1SbtgEwijCEp2BbOBApSa9eYM=";
  };
  consul_1_12_3 = (import ./consul.nix) {
    inherit lib buildGoModule fetchFromGitHub;
    version = "1.12.3";
    sha256 = "sha256-QCSlRGbYCOOS81M7sl8Skr1/DhEX+U+0dCroWydzifw=";
    vendorSha256 = "sha256-3WjmAbY7AVApZZXdCfbjr2X9I8vvwR2EfNmCJv9Gk6A=";
  };
  consul_1_12_2 = (import ./consul.nix) {
    inherit lib buildGoModule fetchFromGitHub;
    version = "1.12.2";
    sha256 = "sha256-X2vW6fnT5IY+YxGnAP5Flk610vIwLg3Qu/rEerFyNCw=";
    vendorSha256 = "sha256-Qcm+uPlvzg0r+a/rYVCUaQ7iIgCpW7MyL7KrHkNm4XQ=";
  };
  consul_1_12_1 = (import ./consul.nix) {
    inherit lib buildGoModule fetchFromGitHub;
    version = "1.12.1";
    sha256 = "sha256-VSxgtsCPi3EdRWon3VBE9sC0lr5k5uDn/iMqrKAJeM0=";
    vendorSha256 = "sha256-Qcm+uPlvzg0r+a/rYVCUaQ7iIgCpW7MyL7KrHkNm4XQ=";
  };
  consul_1_12_0 = (import ./consul.nix) {
    inherit lib buildGoModule fetchFromGitHub;
    version = "1.12.0";
    sha256 = "sha256-O47s9eNZsqg0zpgoK2S4JvuOEqqVWvx8YmbQTvCw0Co=";
    vendorSha256 = "sha256-NRFGt8YA179C/OvyMGXYaZMUH685pJfdGB0AhMrCixs=";
  };
}
