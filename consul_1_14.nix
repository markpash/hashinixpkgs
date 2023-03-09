{ lib, buildGoModule, fetchFromGitHub }:

{
  consul_1_14_5 = (import ./consul.nix) {
    inherit lib buildGoModule fetchFromGitHub;
    version = "1.14.5";
    sha256 = "sha256-4TxBlOEe3vxvtV+EU6FmZE8n2QYWYbU7+44A51yqS/g=";
    vendorSha256 = "sha256-XmRNEbCd9q+iihSy94TzZicQdmmW/iKxXZEO3C5oBX0=";
  };
  consul_1_14_4 = (import ./consul.nix) {
    inherit lib buildGoModule fetchFromGitHub;
    version = "1.14.4";
    sha256 = "sha256-aPJcb7nIjNIT5Bt/On+KFHHA2bNBO4y7HDFpsjhh8j0=";
    vendorSha256 = "sha256-g7Pi/wOjClwcuqeHQjhqBtnORArx1G4Znqvfl0bf3V4=";
  };
  consul_1_14_3 = (import ./consul.nix) {
    inherit lib buildGoModule fetchFromGitHub;
    version = "1.14.3";
    sha256 = "sha256-zTsFLBd+7G+8HT8EGLSQaMhFfh/7s1tfu2gZtIMbkDs=";
    vendorSha256 = "sha256-tekrveDmUq6qYafRMm7knxp9+FevaDbu4DZusO6KDtA=";
  };
  consul_1_14_2 = (import ./consul.nix) {
    inherit lib buildGoModule fetchFromGitHub;
    version = "1.14.2";
    sha256 = "sha256-fSEQZ+F3b8l1F/80A4hDPHE7kZMPARQXt/PJg/m4Srw=";
    vendorSha256 = "sha256-4tidE6LKYhi8ilM08Rn3F5snhxebdgOOeSrIIkXZ384=";
  };
  consul_1_14_1 = (import ./consul.nix) {
    inherit lib buildGoModule fetchFromGitHub;
    version = "1.14.1";
    sha256 = "sha256-iitwWFtgz4juqNFa6d6c+OzVo227gOOyWSwz+4cDgsc=";
    vendorSha256 = "sha256-hECWi+jWfrmIqzsWQSoWxohGbF9Hcg2ZkBHBaTrjK+U=";
  };
  consul_1_14_0 = (import ./consul.nix) {
    inherit lib buildGoModule fetchFromGitHub;
    version = "1.14.0";
    sha256 = "sha256-so+JtDcIWRF8HaoiqalxKxzl8ITonDABXK07guwIYRA=";
    vendorSha256 = "sha256-cCfC/PcpNRQ3UL7OGk2ydCN8wNPvyJTGYMANfqpMHKg=";
  };
}
