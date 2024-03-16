{ lib, buildGoModule, fetchFromGitHub, version , sha256 , vendorHash }:

buildGoModule rec {
  pname = "consul";
  inherit version;

  src = fetchFromGitHub {
    owner = "hashicorp";
    repo = pname;
    rev = "v${version}";
    inherit sha256;
  };
  inherit vendorHash;

  subPackages = ["." "connect/certgen"];

  ldflags = [
    "-s"
    "-w"
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
