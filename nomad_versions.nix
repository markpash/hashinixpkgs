{ lib, buildGoModule, fetchFromGitHub }:

lib.attrsets.mapAttrs'
  (
    version: { sha256, vendorHash }:
    lib.attrsets.nameValuePair ("nomad_" + (builtins.replaceStrings [ "." ] [ "_" ] version)) (
      (import ./nomad.nix) { inherit lib buildGoModule fetchFromGitHub version sha256 vendorHash; }
    )
  )
{
  "1.10.1" = { sha256 = "sha256-fHLtLp2K0BPmN9SYL6xHay9h4zHsGAE8bqboID3J0HE="; vendorHash = "sha256-ZBCwZFrCauT0y/cMhrZow2I0fgbl4JrIEIjmtm/zVd4="; };
  "1.10.0" = { sha256 = "sha256-WtxlgmtYASDm8JjSKF+laBO53EL6ZM36ecASMXXr4p8="; vendorHash = "sha256-a6lPhWfs9R6C+cgCecLara1ZqpS1WPngp6Z4nF3WwQQ="; };

  "1.9.7" = { sha256 = "sha256-U02H6DPr1friQ9EwqD/wQnE2Fm20OE5xNccPDJfnsqI="; vendorHash = "sha256-9GnwqkexJAxrhW9yJFaDTdSaZ+p+/dcMuhlusp4cmyw="; };
  "1.9.6" = { sha256 = "sha256-j+3ecQsFicdYX4GddwaKEwoIFu88kdjI5Kl8bHUQQwE="; vendorHash = "sha256-frHIP86NsW6C9GRdPaZQc3PilolXJ2ojaNZYlrMcbOg="; };
  "1.9.5" = { sha256 = "sha256-NIv3QPSYoYrDQxxtNDHc3DdBLb45oUdA5Jyjke+XzD8="; vendorHash = "sha256-y4WBOSfkRYNQRWu5B/j2JBLPAxJ1fyLD0DEAjB10Sl8="; };
  "1.9.4" = { sha256 = "sha256-yhOyHfD5099dCY7lIJzTb8tQrqQ86N8HVtSk5mB7saY="; vendorHash = "sha256-Cxjgs4Hmv0sq11OpvYLnNcc76ojwqwcxMmCZT5Or0f4="; };
  "1.9.3" = { sha256 = "sha256-KjVr9NIL9Qw10EoP/C+2rjtqU2qBSF6SKpIvQWQJWuo="; vendorHash = "sha256-paUI5mYa9AvMsI0f/VeVdnZzwKS9gsBIb6T4KmugPKQ="; };
  "1.9.2" = { sha256 = "sha256-HIyRzujAGwhB2anbxidhq5UpWYHkigyyHfxIUwMF5X8="; vendorHash = "sha256-YIOTdD+oRDdEHkBzQCUuKCz7Wbj4mFjrZY0J3Cte400="; }; # don't use
  "1.9.1" = { sha256 = "sha256-kqOlIRKaYr4nHxWfviPRvJRq+vsMH7InYdlD99Il4+Q="; vendorHash = "sha256-Ss/qwQ14VUu40nXaIgTfNuj95ekTTVrY+zcStFDSCyI="; };
  "1.9.0" = { sha256 = "sha256-MJNPYSH3KsRmGQeOcWw4VvDeFGinfsyGSo4q3OdOZo8="; vendorHash = "sha256-Ss/qwQ14VUu40nXaIgTfNuj95ekTTVrY+zcStFDSCyI="; };

  "1.8.4" = { sha256 = "sha256-BzLvALD65VqWNB9gx4BgI/mYWLNeHzp6WSXD/1Xf0Wk="; vendorHash = "sha256-0mnhZeiCLAWvwAoNBJtwss85vhYCrf/5I1AhyXTFnWk="; };
  "1.8.3" = { sha256 = "sha256-u1R5lG9fpIbAePLlDy+kk2hQpFdT1VIY0sMskHJZ19w="; vendorHash = "sha256-5Gn37hFVDkUlyv4MVZMH9PlpyWAyWE5RTFQyuMIA/Bc="; };
  "1.8.2" = { sha256 = "sha256-deVLC7yGgLHCauq+3h0Uu5ln5omoeV8/FkVtQM9CEXc="; vendorHash = "sha256-Pr38tRzym8UFPZKs9367xOZJ9P5OHotwwClorcSgOys="; };
  "1.8.1" = { sha256 = "sha256-twk3gCzGSl0gF2uPvarDuT4lWSWd9AV2PWUm2mBJpag="; vendorHash = "sha256-sD3OboMQ5gJVz2+o0Rgpbco3YgibAOHUJUSiyxiG5OA="; };
  "1.8.0" = { sha256 = "sha256-j/9wvnxYhv6h344904cO2Fi6pNeSV5IfcqS4mSjDqpo="; vendorHash = "sha256-jNdLLs/mfARl5Uk9RalwSDFLAKqIISEkek3l1wV8EYE="; };

  "1.7.7" = { sha256 = "sha256-4nuRheidR6rIoytrnDQdIP69f+sBLJ3Ias5DvqVaLFc="; vendorHash = "sha256-ZuaD8iDsT+/eW0QUavf485R804Jtjl76NcQWYHA8QII="; };
  "1.7.6" = { sha256 = "sha256-rEWXQwkW/muX3D0An3WmHCoboPACFCrSG7Tyzor2wnQ="; vendorHash = "sha256-95yUtNfN/50LjWHHReaB4/riUqy8J67099bP8Ua7gRw="; };
  "1.7.5" = { sha256 = "sha256-uwPAmmxxlPp5NuuCUTv5VykX+q2vbA0yCRoblrJPP1g="; vendorHash = "sha256-xu1odCHUO3cv0ldXj3T8aM+fqPzc4r1gyFWsiuyzOpU="; };
  "1.7.4" = { sha256 = "sha256-iyY899W/uwP/wQcarKufSpJdXRAtwDxT6yw5vrB6Xmk="; vendorHash = "sha256-yPf19IRTq+LAaoHsEFVuPJLapFxH3o16y0PbYW0ehiw="; };
  "1.7.3" = { sha256 = "sha256-Rl/bDglO87kbtxFCy0eiTQVJCAwPobQI4GJQOflvXhk="; vendorHash = "sha256-M8lGzUvPY8hNhN9ExHasfnLhe+DYBb86RXr1wdrRbgw="; };
  "1.7.2" = { sha256 = "sha256-tFmsX9C++nuUBqLjjpMMyVCwQHn4nlB3OywIPMYE32Q="; vendorHash = "sha256-iMEEBDxK7ALa19GMIabofzq557aXcYpt0H3/jAKnBBM="; };
  "1.7.1" = { sha256 = "sha256-dlKlpgQRug/72UmIogOkKNGBT3sPjgGVVuvzHZ4vh3c="; vendorHash = "sha256-MZmhFdZZBkKZDgON1ewVm9Z9jZ1EULp/yMT9q6fCqIw="; };
  "1.7.0" = { sha256 = "sha256-7l7HBs5FymSTDXQzHCPpD35bFyz7zsA0ZnYiwTkd2Ts="; vendorHash = "sha256-MZmhFdZZBkKZDgON1ewVm9Z9jZ1EULp/yMT9q6fCqIw="; };
}
