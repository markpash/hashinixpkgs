{ lib, buildGoModule, fetchFromGitHub }:

lib.attrsets.mapAttrs'
  (
    version: { sha256, vendorSha256 }:
    lib.attrsets.nameValuePair ("nomad_" + (builtins.replaceStrings [ "." ] [ "_" ] version)) (
      (import ./nomad.nix) { inherit lib buildGoModule fetchFromGitHub version sha256 vendorSha256; }
    )
  )
{
  "1.7.3" = { sha256 = "sha256-Rl/bDglO87kbtxFCy0eiTQVJCAwPobQI4GJQOflvXhk="; vendorSha256 = "sha256-M8lGzUvPY8hNhN9ExHasfnLhe+DYBb86RXr1wdrRbgw="; };
  "1.7.2" = { sha256 = "sha256-tFmsX9C++nuUBqLjjpMMyVCwQHn4nlB3OywIPMYE32Q="; vendorSha256 = "sha256-iMEEBDxK7ALa19GMIabofzq557aXcYpt0H3/jAKnBBM="; };
  "1.7.1" = { sha256 = "sha256-dlKlpgQRug/72UmIogOkKNGBT3sPjgGVVuvzHZ4vh3c="; vendorSha256 = "sha256-MZmhFdZZBkKZDgON1ewVm9Z9jZ1EULp/yMT9q6fCqIw="; };
  "1.7.0" = { sha256 = "sha256-7l7HBs5FymSTDXQzHCPpD35bFyz7zsA0ZnYiwTkd2Ts="; vendorSha256 = "sha256-MZmhFdZZBkKZDgON1ewVm9Z9jZ1EULp/yMT9q6fCqIw="; };

  "1.6.6" = { sha256 = "sha256-E7HLBABOtDO/BUc2+4mD4yJ/sfy85gy67ZylRTZI3Cg="; vendorSha256 = "sha256-6jq00RsukuP8OSkXhqYqQxpXtp/jm/GChEwEJTVyO10="; };
  "1.6.5" = { sha256 = "sha256-10s/yRWGoYTRbMytWShuTgYc1b388IID5doAvWXpyCU="; vendorSha256 = "sha256-gd6a/CBJ+OOTNHEaRLoDky2f2cDCyW9wSZzD6K22voQ="; };
  "1.6.4" = { sha256 = "sha256-tlbuxKCm7he1Tij4BYKGvv7a6LKiyWgs2PvbcWg/7A0="; vendorSha256 = "sha256-PrQit4egSq/pkILb6M7A3gsiQvLPABhyLXWgv8GFz/Y="; };
  "1.6.3" = { sha256 = "sha256-5UWGriDy15PX3+9UppcUsEwih/e9COLVBis3fn+24L0="; vendorSha256 = "sha256-gXoheW6Ww9Iu4utKNHweP2blzhWid+Q9Tp0ZgCmBAVg="; };
  "1.6.2" = { sha256 = "sha256-Q0RyO9FZWGxWgVmTU07/pw5P4Ebcwcednq8TDmshuAk="; vendorSha256 = "sha256-XCuWhKuBtSPTK8fXwgjMKMjwLnl1KWZKSJ4Ih9XDIDc="; };
  "1.6.1" = { sha256 = "sha256-RsyGUaLteGiNf0PTkKLcjHTevhKb/mNx2JORpXhHJMw="; vendorSha256 = "sha256-Y3O7ADzZPlLWFbXSYBcI6b5MAhMD0UnkhQxO9VJMpOY="; };
  "1.6.0" = { sha256 = "sha256-979SlqBu2/kUdPB4BplhOcEq0J2sjKmFkEiLOzOAUPM="; vendorSha256 = "sha256-Y3O7ADzZPlLWFbXSYBcI6b5MAhMD0UnkhQxO9VJMpOY="; };

  "1.5.14" = { sha256 = "sha256-qblrLvFFAPj5eUKkluoXgy/zJVna2Qi8g1siuRX3PJA="; vendorSha256 = "sha256-dMnwByqXtlTZ/X2fla43a4+RYJpeedjggcckz8ui/2o="; };
  "1.5.13" = { sha256 = "sha256-SFPjcr3W6Sj1n+1ooi1HDMQEapgGapVy4HtqxSIVi9U="; vendorSha256 = "sha256-F9lzO3jMVbDq8sA4rBo81vmIoOhK2N8d4HXX58HOw18="; };
  "1.5.12" = { sha256 = "sha256-BhKetWtwysWTYI0ruEp/Ixh4eoGxDX0Geup2PCXfsZY="; vendorSha256 = "sha256-X4pBxKWr5QFRxh9tw5QDpytyuVNXQvV1LHm5IbPELY0="; };
  "1.5.11" = { sha256 = "sha256-HtCVwbbH+4EnURDEUsAR9EQnOkRrnDpaPnTK+Q3SXuA="; vendorSha256 = "sha256-glYtT9HzruxLKfQaemd3Xdg5xdCMfKAyRqiXTjpZc8c="; };
  "1.5.10" = { sha256 = "sha256-e6KWk/SJmeAIWRUm2P/H5XQjoPj7gNoXL+F1BInrypo="; vendorSha256 = "sha256-JFlhEyVguNFegZVBKvYRpkqAN4lpOq07wny7ZPdp10U="; };
  "1.5.9" = { sha256 = "sha256-s0SLrpqgbLdhwTJ9PCodkojF4zin7kW2UleZf49RoXk="; vendorSha256 = "sha256-Z7L2zZJz0jTrNRoH+5QSB81wK6dDO+I/3Lc3h3OUPNk="; };
  "1.5.8" = { sha256 = "sha256-5VAUNunQz4s1Icd+s5i8Kx6u1P0By+ikl4C5wXM1oho="; vendorSha256 = "sha256-y3WiQuoQn6SdwTgtPWuB6EBtsJC+YleQPzownZQNkno="; };
  "1.5.7" = { sha256 = "sha256-IafIC1YVbJFQjC04S2rqjDgB83uSFpMajgsKxfFc/H8="; vendorSha256 = "sha256-y3WiQuoQn6SdwTgtPWuB6EBtsJC+YleQPzownZQNkno="; };
  "1.5.6" = { sha256 = "sha256-eFzGaTJ9BcK5F10lkTKB3sNaGZsmZ0BbPZI6kT5ZUpo="; vendorSha256 = "sha256-tOUQr44wUhhCccvj4dCI7fvLMrKaEX7xY7035Q3wU3M="; };
  "1.5.5" = { sha256 = "sha256-8m0ng6i+JlgJKuzpce3gckrKVXNmjTiMCki1+N/ndio="; vendorSha256 = "sha256-RqSabARrCjIjkncWcQUF/WcTd65N2kkbSTlZkMw59ZQ="; };
  "1.5.4" = { sha256 = "sha256-omvUqhIvLusFkXdq5uGvxpNwWL6TnA2lgq6ZwQhb198="; vendorSha256 = "sha256-awJGvBw29pkDM7Y1HuhhnjlBi4/K40tauAp9f0ygu/o="; };
  "1.5.3" = { sha256 = "sha256-wCWBannag6J4ZJCdy8gdy//AqhVAzqftYACm59J27n8="; vendorSha256 = "sha256-1i/sokGDspsUtLhRqp9YImXp9u86TfGgAnwhdIZafFc="; };
  "1.5.2" = { sha256 = "sha256-0cE7KnI7J3qTyTSupOjBUlgpfyDBkF3NXGTIOBcCOt4="; vendorSha256 = "sha256-1i/sokGDspsUtLhRqp9YImXp9u86TfGgAnwhdIZafFc="; };
  "1.5.1" = { sha256 = "sha256-VStqL2U5aNax7wtb4sE/orUbBZjBoXE8L1Ks+DqTilU="; vendorSha256 = "sha256-NyQ77IQ7PUCjj1fiPzXUiDD1pLjmS8MUHcMWZFCbfJQ="; };
  "1.5.0" = { sha256 = "sha256-xaMt57g2TV+LG5NRmIvKqg/Ljf2BFcHayuxC+Fz/9Ys="; vendorSha256 = "sha256-qU1gpN9T3b+onWgs2lJ01Wc0zzWwyndbvoja6fZsXFE="; };

  "1.4.14" = { sha256 = "sha256-8/XjbuMk9H5mmuQAbMmxex9m3M8X+7ZnOuDF0PHEaXE="; vendorSha256 = "sha256-I34uJaKCfEhMImpHL6faxKmsoz0rU4hA/eJ1BOUHGAE="; };
  "1.4.13" = { sha256 = "sha256-dTFUxWY/j1oRmC+/J+rmvS8dVE3ENzjYzzJak8kejo4="; vendorSha256 = "sha256-VXHzgF2LeyeBhL2csdKx9kolrbKUkwfLHvATHF8MLBw="; };
  "1.4.12" = { sha256 = "sha256-dO98FOaO5MB5pWzeF705s/aBDTaF0OyWnVxWGB91suI="; vendorSha256 = "sha256-D5TcTZa64Jr47u4mrTXK4lUIC5gfBQNVgL6QKh1CaQM="; };
  "1.4.11" = { sha256 = "sha256-P0VP0OMegeExDtrvRqi7NDlXBFEjxnaB9nk8qLI7s7I="; vendorSha256 = "sha256-D5TcTZa64Jr47u4mrTXK4lUIC5gfBQNVgL6QKh1CaQM="; };
  "1.4.10" = { sha256 = "sha256-iiMOh6QGFEXBGwUdgdjiKTc+ssCds9mJKs2aW0+MHi8="; vendorSha256 = "sha256-C4Qnyyp4pOrKGJgLlMH+HBhG0Gp6M7QoCnjHFhCnQ/g="; };
  "1.4.9" = { sha256 = "sha256-s69sNt6kXyUYjurmuzogC+/q6omfRM5FP+e8oUzOJ9g="; vendorSha256 = "sha256-soa38q9BVRWK+DeSvBOFDR1B43Lj5IldY8ZlL8o2iFM="; };
  "1.4.8" = { sha256 = "sha256-jUnsthRpLhrtuVNYTpwK25Pu267R6aUU2DVZ8sEqowI="; vendorSha256 = "sha256-ErMqWZOa7tM38QQi8R/xuOkgfIREGY5L1M1H1UQL8mw="; };
  "1.4.7" = { sha256 = "sha256-5IN3YbGXl6OfYhuwV9ImvtQmjsm6WhqwyIFYnF2iGBg="; vendorSha256 = "sha256-ErMqWZOa7tM38QQi8R/xuOkgfIREGY5L1M1H1UQL8mw="; };
  "1.4.6" = { sha256 = "sha256-l4GvQIS5JSSgjBjPivAKAb7gKlVLw4WoZpPR8LxnLNc="; vendorSha256 = "sha256-05BhKF6kx0wbu74cidpTFhUN668R/AxV6qWmchCm/WE="; };
  "1.4.5" = { sha256 = "sha256-cUPzqq/lsow9NNCpkGJLzstcbYs79ADtxlY3B5G3oYE="; vendorSha256 = "sha256-ibpThg85v6F9Z0h5QuzAuRVqqd1Wn5ndjqI8jDANi2U="; };
  "1.4.4" = { sha256 = "sha256-mAimuWolTJ3lMY/ArnLZFu+GZv9ADdGsriXsTcEgdYc="; vendorSha256 = "sha256-QtP7pzsIBd2S79AUcbOeVG71Mb5qK706rq5DkT41VqM="; };
  "1.4.3" = { sha256 = "sha256-GQVfrn9VlzfdIj73W3hBpHcevsXZcb6Uj808HUCZUUg="; vendorSha256 = "sha256-JQRpsQhq5r/QcgFwtnptmvnjBEhdCFrXFrTKkJioL3A="; };
  "1.4.2" = { sha256 = "sha256-GGLy/6FgMTSZ701F0QGwcw1EFZSUMyPOlokThOTtdJg="; vendorSha256 = "sha256-dd8rTGcO4GVMRuABwT4HeucZqYKxrgRUkua/bSPLNH0="; };
  "1.4.1" = { sha256 = "sha256-LQ/fypao6Amun9MY5FRCRasxqnywzI5gpzcO2PPJdWg="; vendorSha256 = "sha256-kfT2UGC8Wl7CM9lOU75UqKc0/O1okGCoGDpmQntakbU="; };
  "1.4.0" = { sha256 = "sha256-iAAnXhJdfgBsuBsuIkFQB4AbTplX3HJuf5HfUGAUEeM="; vendorSha256 = "sha256-kfT2UGC8Wl7CM9lOU75UqKc0/O1okGCoGDpmQntakbU="; };

  "1.3.16" = { sha256 = "sha256-MJVFiNv+uwEH3skNMAdM6VB2582cHIw1aG+bKQMfkB8="; vendorSha256 = "sha256-cFUF53bC+9Oj2psKx9sJFmKeWIleYzho6VIOEUlEeaM="; };
  "1.3.15" = { sha256 = "sha256-NKOw9axSrk9LnQkKSIQQEqpktIkhadqXF83njCOLLzo="; vendorSha256 = "sha256-cFUF53bC+9Oj2psKx9sJFmKeWIleYzho6VIOEUlEeaM="; };
  "1.3.14" = { sha256 = "sha256-hTkJSwptymk+XoK29uYlSWBNWC3UOVpg3sm4RpbTGoo="; vendorSha256 = "sha256-Z+9uLq5Mi7oK/wnKrSNKmJSd0C97Pk1fCtmo88doYP4="; };
  "1.3.13" = { sha256 = "sha256-wuxlS0fzcHl2c184X59UsKpWxpMCtGOHXYSgPUlK76w="; vendorSha256 = "sha256-0C/GIj4hGIE/f3OvFWU0hgrmN9x8XNV+uMbxtKz4DLA="; };
  "1.3.12" = { sha256 = "sha256-cnqo7GX78nvM1/k78fgGldmvIHkAXXIP4tgMrbKSD+8="; vendorSha256 = "sha256-0C/GIj4hGIE/f3OvFWU0hgrmN9x8XNV+uMbxtKz4DLA="; };
  "1.3.11" = { sha256 = "sha256-mdpkOyXJBVLFpJZhrUv0Rw3Aaa9fxCJK+QRuXEXIeak="; vendorSha256 = "sha256-0C/GIj4hGIE/f3OvFWU0hgrmN9x8XNV+uMbxtKz4DLA="; };
  "1.3.10" = { sha256 = "sha256-qZ5dlttGq732UieZE9P5gsy5ougfSXgzn26/Ku7b3eo="; vendorSha256 = "sha256-spCOfk4F465FMnwhf+ZIqkm1lFNFGbcB6BXXepScxrk="; };
  "1.3.9" = { sha256 = "sha256-xfoIzLDG/OfqAPQqeLvQZ11uESWFNyOyLP6Imi+S96w="; vendorSha256 = "sha256-kW0goicoM1lM1NEHPTfozg2EKR1daf33UxT/mVabyfY="; };
  "1.3.8" = { sha256 = "sha256-hUmDWgGV8HAXew8SpcbhaiaF9VfBN5mk1W7t5lhnZ9I="; vendorSha256 = "sha256-IfYobyDFriOldJnNfRK0QVKBfttoZZ1iOkt4cBQxd00="; };
  "1.3.7" = { sha256 = "sha256-hMMR7PdCViZdePXy9aFqTFBxoiuuXqIldXyCGkkr5MA="; vendorSha256 = "sha256-unw2/E048jzDHj7glXc61UNZIr930UpU9RrXI6DByj4="; };
  "1.3.6" = { sha256 = "sha256-E1+QFaakAsqeXxAfY80ExWVIud7Q/q2TaUVsmADjsgo="; vendorSha256 = "sha256-kgTRjPr7GsoBeE/s9wrmUWE5jv1ZmszfVDsVaRbdx14="; };
  "1.3.5" = { sha256 = "sha256-WKS7EfZxysy/oyq1fa8rKvmfgHRiB7adSVhALZNFYgo="; vendorSha256 = "sha256-byc6wAxpqhxlN3kyHyFQeBS9/oIjHeoz6ldYskizgaI="; };
  "1.3.4" = { sha256 = "sha256-NeBZVCpylP16dPi68unk3H3/V6gWO/SvJRmjgwwwVts="; vendorSha256 = "sha256-XIHtAB0js55mbVuTTWdLW5BMhQjd6/GUbcBk8DEYZg8="; };
  "1.3.3" = { sha256 = "sha256-/63QGknivXyBel2MhMzbh/rE+UrfV3mb+zPZzOU15WU="; vendorSha256 = "sha256-5ubJ6hgpdkZd/hwy+u2S6XgQLD5xmgUnaUqJoLdguBQ="; };
  "1.3.2" = { sha256 = "sha256-GJul7slXNLEp+3l3OQ43ALVH3IscoCDDL7FG2UFtLG8="; vendorSha256 = "sha256-MqtkYHGIgeCFnbwE09xHgPMuJBSVHL0hB9RbwNX+K40="; };
  "1.3.1" = { sha256 = "sha256-p0pkOlPjDYcMV7XAhEbUO8PE0wNqAjTmgtv+XiCGkw0="; vendorSha256 = "sha256-8LkJi+MwmLQkL/ZXWOGhJk6tIAmsJm/qBFhkglVvZSI="; };
  "1.3.0" = { sha256 = "sha256-yt6hyR2WBHwSWKugKSqKP2dQeUtXOxHdN/kUQeV5GiU="; vendorSha256 = "sha256-rGw84mWqVatYiEYi8biftilDtD7iwPOhqPOh7e1r6ww="; };
}
