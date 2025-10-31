{ lib, buildGoModule, fetchFromGitHub }:

lib.attrsets.mapAttrs'
  (
    version: { sha256, vendorHash }:
    lib.attrsets.nameValuePair ("consul_" + (builtins.replaceStrings [ "." ] [ "_" ] version)) (
      (import ./consul.nix) { inherit lib buildGoModule fetchFromGitHub version sha256 vendorHash; }
    )
  )
{
  "1.21.3" = { sha256 = "sha256-mWwDAlHbG0L/9xNAmUxAj2S5dDaWZaah/OWPndBRRWE="; vendorHash = "sha256-jb/oUcqMHNBlDgqYNDai2Q9ChA98JGXwFHWNxnrMpaU="; };
  "1.21.1" = { sha256 = "sha256-bkBjKvSJapkiqCKENR+mG3sWYTBUZf9klw2UHqgccdc="; vendorHash = "sha256-06tLz04hFZ2HqpetKMRfFY2JJI4TgedzKYpwcVbemfU="; };
  "1.21.0" = { sha256 = "sha256-KNBsOKd+GzxhmvM2aItnoYpob8cZ7Wzjp1fi7IRlLnk="; vendorHash = "sha256-l0fhZVsaoQnKVN2/3ioS/T7YSNTarOy84PxZ9Xx40t4="; };

  "1.20.6" = { sha256 = "sha256-R7Bf3hmkn+b6SOxAhy4pFUuyDbywBcOdEB+/M2IeFA8="; vendorHash = "sha256-SHTwfwMHQOnqr0LOb2xxS261qZVVpUnxgl/Tdb0Rmv4="; };
  "1.20.5" = { sha256 = "sha256-dBx/WHi+qFrOyA0lIjvARcAZ96WvHCjVs94XicSL5L0="; vendorHash = "sha256-rQDVXMLXI2/D4SNLfs3CT4chDnzhh1aU5xuMMBDMhLI="; };
  "1.20.4" = { sha256 = "sha256-pvTHrFrnRSprsbIPenVPVnnmU59OQCZc9DF+8wcWJ3A="; vendorHash = "sha256-hAnIKuFtS6l4nhq8bTcHkvW43FT6K8+0FglRRNfDtPg="; };
  "1.20.3" = { sha256 = "sha256-Bgzanv7z2mVtzp6UC5mxzkYaE82ULioVmaXN2DqJ4LI="; vendorHash = "sha256-Sa6OcRMgx1WUXVNbgSAR+2KWYlc6b/50ZqPS8/ycBkI="; };
  "1.20.2" = { sha256 = "sha256-pUKX94OgJ2PTchBokAI5QzLxvdzQjcePrKHEiB782hc="; vendorHash = "sha256-pH9KVyHgSULZ+fuUSDIXOzLhrdhsbJEom67k6jaW31E="; };
  "1.20.1" = { sha256 = "sha256-nYWrJB98S2zPSBu8ZIHejnLP5OQyPxpJGLdLenGHzHM="; vendorHash = "sha256-SkDvac2mZOB6RMETv/qhjHyaCjjIYmlON42+ZZ6FTlI="; };
  "1.20.0" = { sha256 = "sha256-yHhaaZZ/KxQk8RVkqNfyfWTPS5K+BhckcxqdC5gN+ko="; vendorHash = "sha256-7Nw2zuTyAR7mzxFkeOuhbh9OAlshZA0JKOVQdckIF90="; };

  "1.19.2" = { sha256 = "sha256-BDEKnwX4OZ9eRvcZ3StpJTJM4P0/VvQGEQyaPg0AJhM="; vendorHash = "sha256-n37MNBWMQnX6nMV7FvWF8acO5W4Y3GHzZj2rkulZruY="; };
  "1.19.1" = { sha256 = "sha256-UMKXI16QQHV9I+kH62KRbZCEcQLXkBwB6o/lqtCZa78="; vendorHash = "sha256-l1+KVygh0TuvN45UmU/bXksjHBTZZ6jt54nZtR9f+II="; };
  "1.19.0" = { sha256 = "sha256-GO2BfdozsAo1r4iSyQdAEG8Tm6OkJhSUrH3bZ9lWuO8="; vendorHash = "sha256-h3eTCj/0FPiY/Dj4cMj9VqKBs28ArnTPjRIC3LT06j0="; };

  "1.18.2" = { sha256 = "sha256-9feeWsCAZKip+AYUJTCcqFOTfxsUFMzTRqHjo/Pptho="; vendorHash = "sha256-bBc3qgPUOmR8c/sFyiskePKLKjHTQcWVTLY6esFIRTc="; };
  "1.18.1" = { sha256 = "sha256-r1xdz1rjvbvB93hRpvTNQwSqQLOJwqMhqCiXdIttY10="; vendorHash = "sha256-DcpEHJ88Ehz5m+ddMd44mYTz0agwYhoels5jWJzu1EM="; };
  "1.18.0" = { sha256 = "sha256-Xhh6Rrcv/FoBjzhWR59gQ/R4A3ynqWYS8djNe3CnGCE="; vendorHash = "sha256-pNFjLXjtgsK8fjCCmjYclZw1GM4BfyzkTuaRCRIMJ3c="; };

  "1.17.3" = { sha256 = "sha256-uJN28p2fPQBBkqnlUWrlBwTNfmHr3Pn/4JiMbOBBppI="; vendorHash = "sha256-ToSCLAX+rNcUTnBBVWkWhLX+wjy7Y4vGLKuny1Ye3kY="; };
  "1.17.2" = { sha256 = "sha256-zfJZUDR6GJlJbnLIXa5duq8VOG0WUN+FP5BLQ4EgPKM="; vendorHash = "sha256-bKiKfLq/kbZYziUyD2v1o9X2Gs6uiqzPSYWE4cpeU9Q="; };
  "1.17.1" = { sha256 = "sha256-z6pO9+fQ+0jeYM3wCG8T/1C5aSeSZITj+f8TmGxR+Gw="; vendorHash = "sha256-Xt7azJS65B53jYPWLytNaGQv3Poy+3j4ak1Jq68vZRI="; };
  "1.17.0" = { sha256 = "sha256-fAcgO7r0GrL2GrsX7flezhbQMcg+YBH6Lrn7BW2XMwM="; vendorHash = "sha256-xxREyw7xgx9Zp7nua1yq39TioWvRQXOhWqYaK6eJaOc="; };

  "1.16.6" = { sha256 = "sha256-4bEM88SErwo3YS8TzT8RDrP82AsVonHxzvG8Wm1/K9g="; vendorHash = "sha256-i0nDoc+5Cr6NEC4ALCiiXdzIA/Yhgyqf/vn2ACwwFtk="; };
  "1.16.5" = { sha256 = "sha256-maV4A3Um+EBXnX7FezmRgN1n63EU+lBxNLPx2aZOhRg="; vendorHash = "sha256-AbagvSGEM/sZ6PSmxwjEySL7lzfdHaHrOJ3o0R7I+GA="; };
  "1.16.4" = { sha256 = "sha256-49SGkRdFSQRhe6G8cuTTJKqg3bigoB10QvZcGvoWuGg="; vendorHash = "sha256-cUfXSks49IlQ5BeZHxrzs7u4ikS4bcT68oiwe+wrpRk="; };
  "1.16.3" = { sha256 = "sha256-XxT+66CNuDeVBoaNhlgET5bJYB/KDCjcO0RDmyI6S9o="; vendorHash = "sha256-WNvdHT915GSTFhZZfoi/MCHAjzBVYkhUiPNPw5GDT4s="; };
  "1.16.2" = { sha256 = "sha256-8hm/9gS6aZDMxGc+wAriEY58GP/zx8o+IZsMa4+8T94="; vendorHash = "sha256-0GL/M/fwrwFUgiBm7WBsVPMf98PchQEdcidfjRYZe54="; };
  "1.16.1" = { sha256 = "sha256-EEreAhxBQm6Wj1JFGfC9Ql3NARPXNOhqZkzIDJ2NMkg="; vendorHash = "sha256-zERHmtmGrPrUPJ2fFc+J0pWKLKQc9TTSFkN2RUOXOoM="; };
  "1.16.0" = { sha256 = "sha256-7F0kutAWyi22OxI242P8m1Aoj+l/7F91wmxDSt4ttyA="; vendorHash = "sha256-aZRW+z9oW7if+yMOrETNXFC521Wo0feq1FDv8/Q4ejY="; };
}
