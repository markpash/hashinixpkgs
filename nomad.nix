{ lib, buildGoModule, fetchFromGitHub, version , sha256 , vendorSha256 }:

buildGoModule rec {
  pname = "nomad";
  inherit version;

  src = fetchFromGitHub {
    owner = "hashicorp";
    repo = pname;
    rev = "v${version}";
    inherit sha256;
  };
  inherit vendorSha256;

  subPackages = [ "." ];

  ldflags = [
    "-s"
    "-w"
    "-buildid="
    "-X github.com/hashicorp/nomad/version.GitCommit=${version}"
  ];

  tags = [ "ui" "release" ];

  doCheck = false;

  meta = {
    homepage = "https://github.com/hashicorp/nomad";
    license = lib.licenses.mpl20;
  };
}
