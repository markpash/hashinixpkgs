{ lib, buildGoModule, fetchFromGitHub }:

lib.attrsets.mapAttrs'
  (
    version: { sha256, vendorHash }:
    lib.attrsets.nameValuePair ("nomad_" + (builtins.replaceStrings [ "." ] [ "_" ] version)) (
      (import ./nomad.nix) { inherit lib buildGoModule fetchFromGitHub version sha256 vendorHash; }
    )
  )
{
  "1.7.6" = { sha256 = "sha256-rEWXQwkW/muX3D0An3WmHCoboPACFCrSG7Tyzor2wnQ="; vendorHash = "sha256-95yUtNfN/50LjWHHReaB4/riUqy8J67099bP8Ua7gRw="; };
  "1.7.5" = { sha256 = "sha256-uwPAmmxxlPp5NuuCUTv5VykX+q2vbA0yCRoblrJPP1g="; vendorHash = "sha256-xu1odCHUO3cv0ldXj3T8aM+fqPzc4r1gyFWsiuyzOpU="; };
  "1.7.4" = { sha256 = "sha256-iyY899W/uwP/wQcarKufSpJdXRAtwDxT6yw5vrB6Xmk="; vendorHash = "sha256-yPf19IRTq+LAaoHsEFVuPJLapFxH3o16y0PbYW0ehiw="; };
  "1.7.3" = { sha256 = "sha256-Rl/bDglO87kbtxFCy0eiTQVJCAwPobQI4GJQOflvXhk="; vendorHash = "sha256-M8lGzUvPY8hNhN9ExHasfnLhe+DYBb86RXr1wdrRbgw="; };
  "1.7.2" = { sha256 = "sha256-tFmsX9C++nuUBqLjjpMMyVCwQHn4nlB3OywIPMYE32Q="; vendorHash = "sha256-iMEEBDxK7ALa19GMIabofzq557aXcYpt0H3/jAKnBBM="; };
  "1.7.1" = { sha256 = "sha256-dlKlpgQRug/72UmIogOkKNGBT3sPjgGVVuvzHZ4vh3c="; vendorHash = "sha256-MZmhFdZZBkKZDgON1ewVm9Z9jZ1EULp/yMT9q6fCqIw="; };
  "1.7.0" = { sha256 = "sha256-7l7HBs5FymSTDXQzHCPpD35bFyz7zsA0ZnYiwTkd2Ts="; vendorHash = "sha256-MZmhFdZZBkKZDgON1ewVm9Z9jZ1EULp/yMT9q6fCqIw="; };

  "1.6.9" = { sha256 = "sha256-nZCnXvr0EDleLnny7x3QHn8ooAA1X0QNobjp29O47kI="; vendorHash = "sha256-UhJBn3MuluhvDtjXYoIedHwfKwSY0d5154dSv7fhpmw="; };
  "1.6.8" = { sha256 = "sha256-lc/HZgyzqWZNW2WHOFZ43gCeL5Y2hwK4lXPgWGboPOY="; vendorHash = "sha256-ecLhq4OHDhA1Bd/97NMpfePqtuCtVje3BdvCzcwWzas="; };
  "1.6.7" = { sha256 = "sha256-u7YumZOm0GumqadZb3yZ8ZQzT6ZmA+RQotvw50LJRlk="; vendorHash = "sha256-Fxtmr4+J0idTada/jiypV15K48uSgynqtf6hjUAxfR0="; };
  "1.6.6" = { sha256 = "sha256-E7HLBABOtDO/BUc2+4mD4yJ/sfy85gy67ZylRTZI3Cg="; vendorHash = "sha256-6jq00RsukuP8OSkXhqYqQxpXtp/jm/GChEwEJTVyO10="; };
  "1.6.5" = { sha256 = "sha256-10s/yRWGoYTRbMytWShuTgYc1b388IID5doAvWXpyCU="; vendorHash = "sha256-gd6a/CBJ+OOTNHEaRLoDky2f2cDCyW9wSZzD6K22voQ="; };
  "1.6.4" = { sha256 = "sha256-tlbuxKCm7he1Tij4BYKGvv7a6LKiyWgs2PvbcWg/7A0="; vendorHash = "sha256-PrQit4egSq/pkILb6M7A3gsiQvLPABhyLXWgv8GFz/Y="; };
  "1.6.3" = { sha256 = "sha256-5UWGriDy15PX3+9UppcUsEwih/e9COLVBis3fn+24L0="; vendorHash = "sha256-gXoheW6Ww9Iu4utKNHweP2blzhWid+Q9Tp0ZgCmBAVg="; };
  "1.6.2" = { sha256 = "sha256-Q0RyO9FZWGxWgVmTU07/pw5P4Ebcwcednq8TDmshuAk="; vendorHash = "sha256-XCuWhKuBtSPTK8fXwgjMKMjwLnl1KWZKSJ4Ih9XDIDc="; };
  "1.6.1" = { sha256 = "sha256-RsyGUaLteGiNf0PTkKLcjHTevhKb/mNx2JORpXhHJMw="; vendorHash = "sha256-Y3O7ADzZPlLWFbXSYBcI6b5MAhMD0UnkhQxO9VJMpOY="; };
  "1.6.0" = { sha256 = "sha256-979SlqBu2/kUdPB4BplhOcEq0J2sjKmFkEiLOzOAUPM="; vendorHash = "sha256-Y3O7ADzZPlLWFbXSYBcI6b5MAhMD0UnkhQxO9VJMpOY="; };

  "1.5.16" = { sha256 = "sha256-AfW3w4yZr4uLKYTPUWgU1okPMP7IW1sEKJzCGhTVJhc="; vendorHash = "sha256-I7xkQNDMwjnCP0eNTO2oFGiYuU4ivukpHNrYbbWfUAk="; };
  "1.5.15" = { sha256 = "sha256-OFmGOU+ObA0+BS48y0ZyyxR+VI5DYL39peVKcyVHgGI="; vendorHash = "sha256-Ds94lB43cyMNyRJZti0mZDWGTtSdwY31dDijfAUxR0I="; };
  "1.5.14" = { sha256 = "sha256-qblrLvFFAPj5eUKkluoXgy/zJVna2Qi8g1siuRX3PJA="; vendorHash = "sha256-dMnwByqXtlTZ/X2fla43a4+RYJpeedjggcckz8ui/2o="; };
  "1.5.13" = { sha256 = "sha256-SFPjcr3W6Sj1n+1ooi1HDMQEapgGapVy4HtqxSIVi9U="; vendorHash = "sha256-F9lzO3jMVbDq8sA4rBo81vmIoOhK2N8d4HXX58HOw18="; };
  "1.5.12" = { sha256 = "sha256-BhKetWtwysWTYI0ruEp/Ixh4eoGxDX0Geup2PCXfsZY="; vendorHash = "sha256-X4pBxKWr5QFRxh9tw5QDpytyuVNXQvV1LHm5IbPELY0="; };
  "1.5.11" = { sha256 = "sha256-HtCVwbbH+4EnURDEUsAR9EQnOkRrnDpaPnTK+Q3SXuA="; vendorHash = "sha256-glYtT9HzruxLKfQaemd3Xdg5xdCMfKAyRqiXTjpZc8c="; };
  "1.5.10" = { sha256 = "sha256-e6KWk/SJmeAIWRUm2P/H5XQjoPj7gNoXL+F1BInrypo="; vendorHash = "sha256-JFlhEyVguNFegZVBKvYRpkqAN4lpOq07wny7ZPdp10U="; };
  "1.5.9" = { sha256 = "sha256-s0SLrpqgbLdhwTJ9PCodkojF4zin7kW2UleZf49RoXk="; vendorHash = "sha256-Z7L2zZJz0jTrNRoH+5QSB81wK6dDO+I/3Lc3h3OUPNk="; };
  "1.5.8" = { sha256 = "sha256-5VAUNunQz4s1Icd+s5i8Kx6u1P0By+ikl4C5wXM1oho="; vendorHash = "sha256-y3WiQuoQn6SdwTgtPWuB6EBtsJC+YleQPzownZQNkno="; };
  "1.5.7" = { sha256 = "sha256-IafIC1YVbJFQjC04S2rqjDgB83uSFpMajgsKxfFc/H8="; vendorHash = "sha256-y3WiQuoQn6SdwTgtPWuB6EBtsJC+YleQPzownZQNkno="; };
  "1.5.6" = { sha256 = "sha256-eFzGaTJ9BcK5F10lkTKB3sNaGZsmZ0BbPZI6kT5ZUpo="; vendorHash = "sha256-tOUQr44wUhhCccvj4dCI7fvLMrKaEX7xY7035Q3wU3M="; };
  "1.5.5" = { sha256 = "sha256-8m0ng6i+JlgJKuzpce3gckrKVXNmjTiMCki1+N/ndio="; vendorHash = "sha256-RqSabARrCjIjkncWcQUF/WcTd65N2kkbSTlZkMw59ZQ="; };
  "1.5.4" = { sha256 = "sha256-omvUqhIvLusFkXdq5uGvxpNwWL6TnA2lgq6ZwQhb198="; vendorHash = "sha256-awJGvBw29pkDM7Y1HuhhnjlBi4/K40tauAp9f0ygu/o="; };
  "1.5.3" = { sha256 = "sha256-wCWBannag6J4ZJCdy8gdy//AqhVAzqftYACm59J27n8="; vendorHash = "sha256-1i/sokGDspsUtLhRqp9YImXp9u86TfGgAnwhdIZafFc="; };
  "1.5.2" = { sha256 = "sha256-0cE7KnI7J3qTyTSupOjBUlgpfyDBkF3NXGTIOBcCOt4="; vendorHash = "sha256-1i/sokGDspsUtLhRqp9YImXp9u86TfGgAnwhdIZafFc="; };
  "1.5.1" = { sha256 = "sha256-VStqL2U5aNax7wtb4sE/orUbBZjBoXE8L1Ks+DqTilU="; vendorHash = "sha256-NyQ77IQ7PUCjj1fiPzXUiDD1pLjmS8MUHcMWZFCbfJQ="; };
  "1.5.0" = { sha256 = "sha256-xaMt57g2TV+LG5NRmIvKqg/Ljf2BFcHayuxC+Fz/9Ys="; vendorHash = "sha256-qU1gpN9T3b+onWgs2lJ01Wc0zzWwyndbvoja6fZsXFE="; };

  "1.4.14" = { sha256 = "sha256-8/XjbuMk9H5mmuQAbMmxex9m3M8X+7ZnOuDF0PHEaXE="; vendorHash = "sha256-I34uJaKCfEhMImpHL6faxKmsoz0rU4hA/eJ1BOUHGAE="; };
  "1.4.13" = { sha256 = "sha256-dTFUxWY/j1oRmC+/J+rmvS8dVE3ENzjYzzJak8kejo4="; vendorHash = "sha256-VXHzgF2LeyeBhL2csdKx9kolrbKUkwfLHvATHF8MLBw="; };
  "1.4.12" = { sha256 = "sha256-dO98FOaO5MB5pWzeF705s/aBDTaF0OyWnVxWGB91suI="; vendorHash = "sha256-D5TcTZa64Jr47u4mrTXK4lUIC5gfBQNVgL6QKh1CaQM="; };
  "1.4.11" = { sha256 = "sha256-P0VP0OMegeExDtrvRqi7NDlXBFEjxnaB9nk8qLI7s7I="; vendorHash = "sha256-D5TcTZa64Jr47u4mrTXK4lUIC5gfBQNVgL6QKh1CaQM="; };
  "1.4.10" = { sha256 = "sha256-iiMOh6QGFEXBGwUdgdjiKTc+ssCds9mJKs2aW0+MHi8="; vendorHash = "sha256-C4Qnyyp4pOrKGJgLlMH+HBhG0Gp6M7QoCnjHFhCnQ/g="; };
  "1.4.9" = { sha256 = "sha256-s69sNt6kXyUYjurmuzogC+/q6omfRM5FP+e8oUzOJ9g="; vendorHash = "sha256-soa38q9BVRWK+DeSvBOFDR1B43Lj5IldY8ZlL8o2iFM="; };
  "1.4.8" = { sha256 = "sha256-jUnsthRpLhrtuVNYTpwK25Pu267R6aUU2DVZ8sEqowI="; vendorHash = "sha256-ErMqWZOa7tM38QQi8R/xuOkgfIREGY5L1M1H1UQL8mw="; };
  "1.4.7" = { sha256 = "sha256-5IN3YbGXl6OfYhuwV9ImvtQmjsm6WhqwyIFYnF2iGBg="; vendorHash = "sha256-ErMqWZOa7tM38QQi8R/xuOkgfIREGY5L1M1H1UQL8mw="; };
  "1.4.6" = { sha256 = "sha256-l4GvQIS5JSSgjBjPivAKAb7gKlVLw4WoZpPR8LxnLNc="; vendorHash = "sha256-05BhKF6kx0wbu74cidpTFhUN668R/AxV6qWmchCm/WE="; };
  "1.4.5" = { sha256 = "sha256-cUPzqq/lsow9NNCpkGJLzstcbYs79ADtxlY3B5G3oYE="; vendorHash = "sha256-ibpThg85v6F9Z0h5QuzAuRVqqd1Wn5ndjqI8jDANi2U="; };
  "1.4.4" = { sha256 = "sha256-mAimuWolTJ3lMY/ArnLZFu+GZv9ADdGsriXsTcEgdYc="; vendorHash = "sha256-QtP7pzsIBd2S79AUcbOeVG71Mb5qK706rq5DkT41VqM="; };
  "1.4.3" = { sha256 = "sha256-GQVfrn9VlzfdIj73W3hBpHcevsXZcb6Uj808HUCZUUg="; vendorHash = "sha256-JQRpsQhq5r/QcgFwtnptmvnjBEhdCFrXFrTKkJioL3A="; };
  "1.4.2" = { sha256 = "sha256-GGLy/6FgMTSZ701F0QGwcw1EFZSUMyPOlokThOTtdJg="; vendorHash = "sha256-dd8rTGcO4GVMRuABwT4HeucZqYKxrgRUkua/bSPLNH0="; };
  "1.4.1" = { sha256 = "sha256-LQ/fypao6Amun9MY5FRCRasxqnywzI5gpzcO2PPJdWg="; vendorHash = "sha256-kfT2UGC8Wl7CM9lOU75UqKc0/O1okGCoGDpmQntakbU="; };
  "1.4.0" = { sha256 = "sha256-iAAnXhJdfgBsuBsuIkFQB4AbTplX3HJuf5HfUGAUEeM="; vendorHash = "sha256-kfT2UGC8Wl7CM9lOU75UqKc0/O1okGCoGDpmQntakbU="; };
}
