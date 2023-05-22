{ lib, buildGoModule, fetchFromGitHub }:

lib.attrsets.mapAttrs'
  (
    version: { sha256, vendorSha256 }:
    lib.attrsets.nameValuePair ("nomad_" + (builtins.replaceStrings [ "." ] [ "_" ] version)) (
      (import ./nomad.nix) { inherit lib buildGoModule fetchFromGitHub version sha256 vendorSha256; }
    )
  )
{
  "1.5.5" = { sha256 = "sha256-8m0ng6i+JlgJKuzpce3gckrKVXNmjTiMCki1+N/ndio="; vendorSha256 = "sha256-RqSabARrCjIjkncWcQUF/WcTd65N2kkbSTlZkMw59ZQ="; };
  "1.5.4" = { sha256 = "sha256-omvUqhIvLusFkXdq5uGvxpNwWL6TnA2lgq6ZwQhb198="; vendorSha256 = "sha256-awJGvBw29pkDM7Y1HuhhnjlBi4/K40tauAp9f0ygu/o="; };
  "1.5.3" = { sha256 = "sha256-wCWBannag6J4ZJCdy8gdy//AqhVAzqftYACm59J27n8="; vendorSha256 = "sha256-1i/sokGDspsUtLhRqp9YImXp9u86TfGgAnwhdIZafFc="; };
  "1.5.2" = { sha256 = "sha256-0cE7KnI7J3qTyTSupOjBUlgpfyDBkF3NXGTIOBcCOt4="; vendorSha256 = "sha256-1i/sokGDspsUtLhRqp9YImXp9u86TfGgAnwhdIZafFc="; };
  "1.5.1" = { sha256 = "sha256-VStqL2U5aNax7wtb4sE/orUbBZjBoXE8L1Ks+DqTilU="; vendorSha256 = "sha256-NyQ77IQ7PUCjj1fiPzXUiDD1pLjmS8MUHcMWZFCbfJQ="; };
  "1.5.0" = { sha256 = "sha256-xaMt57g2TV+LG5NRmIvKqg/Ljf2BFcHayuxC+Fz/9Ys="; vendorSha256 = "sha256-qU1gpN9T3b+onWgs2lJ01Wc0zzWwyndbvoja6fZsXFE="; };

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
