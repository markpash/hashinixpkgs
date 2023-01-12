{ lib, buildGoModule, fetchFromGitHub, version , sha256 , vendorSha256 }:

buildGoModule rec {
  pname = "consul";
  inherit version;

  src = fetchFromGitHub {
    owner = "hashicorp";
    repo = pname;
    rev = "v${version}";
    inherit sha256;
  };
  inherit vendorSha256;

  subPackages = ["." "connect/certgen"];

  ldflags = [
    "-s"
    "-w"
    "-buildid="
    "-X github.com/hashicorp/consul/version.GitDescribe=v${version}"
    "-X github.com/hashicorp/consul/version.Version=${version}"
    "-X github.com/hashicorp/consul/version.VersionPrerelease="
  ];

  doCheck = false;

  meta = {
    homepage = "https://github.com/hashicorp/consul";
    license = lib.licenses.mpl20;
  };
}
