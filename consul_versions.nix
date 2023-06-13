{ lib, buildGoModule, fetchFromGitHub }:

lib.attrsets.mapAttrs'
  (
    version: { sha256, vendorSha256 }:
    lib.attrsets.nameValuePair ("consul_" + (builtins.replaceStrings [ "." ] [ "_" ] version)) (
      (import ./consul.nix) { inherit lib buildGoModule fetchFromGitHub version sha256 vendorSha256; }
    )
  )
{
  "1.15.3" = { sha256 = "sha256-Xe+baALN8Ow6vjneWAvC65cBSsrMAsdxjEQRBcvWxCw="; vendorSha256 = "sha256-tbwX/uF9+yIhd+KSGF2v7HjxGtfaZYSm+1GIspQmC9A="; };
  "1.15.2" = { sha256 = "sha256-8C06arK7QnrT5qQZWBjamOOlejy69pxRHXKoncfMKAc="; vendorSha256 = "sha256-Vcl23cWErAycmza1CS9rl+xJ7CBuocMAdSG9AA88SrQ="; };
  "1.15.1" = { sha256 = "sha256-U7/et05WOBP7TT8iSXD447dBzRDzrmoeOYFofp/Cwh0="; vendorSha256 = "sha256-6lYIwOpQjpw7cmeEhDtTs5FzagcAagD+NbfHCO9D/6M="; };
  "1.15.0" = { sha256 = "sha256-WJQHBSwmcJiUGt69DMMZxs+xEk3z+fadSHoHvxb48ZU="; vendorSha256 = "sha256-XwoZ/iwsZ/zXgPRGfBit5TO2NDS2pTEO0FT4KSUhJtA="; };

  "1.14.7" = { sha256 = "sha256-ohbwufwDoUb8+u2OHxoKSrtIs969wupc6H6LXDIBT9I="; vendorSha256 = "sha256-6lLbIOonGh692UXqqNJvyefAehqXbqwfsGsJKbV9M/8="; };
  "1.14.6" = { sha256 = "sha256-cwefHV5CsH+0poz1u+AjsmXvHrC+Is7Hhblv1VN3CTQ="; vendorSha256 = "sha256-XmRNEbCd9q+iihSy94TzZicQdmmW/iKxXZEO3C5oBX0="; };
  "1.14.5" = { sha256 = "sha256-4TxBlOEe3vxvtV+EU6FmZE8n2QYWYbU7+44A51yqS/g="; vendorSha256 = "sha256-XmRNEbCd9q+iihSy94TzZicQdmmW/iKxXZEO3C5oBX0="; };
  "1.14.4" = { sha256 = "sha256-aPJcb7nIjNIT5Bt/On+KFHHA2bNBO4y7HDFpsjhh8j0="; vendorSha256 = "sha256-g7Pi/wOjClwcuqeHQjhqBtnORArx1G4Znqvfl0bf3V4="; };
  "1.14.3" = { sha256 = "sha256-zTsFLBd+7G+8HT8EGLSQaMhFfh/7s1tfu2gZtIMbkDs="; vendorSha256 = "sha256-tekrveDmUq6qYafRMm7knxp9+FevaDbu4DZusO6KDtA="; };
  "1.14.2" = { sha256 = "sha256-fSEQZ+F3b8l1F/80A4hDPHE7kZMPARQXt/PJg/m4Srw="; vendorSha256 = "sha256-4tidE6LKYhi8ilM08Rn3F5snhxebdgOOeSrIIkXZ384="; };
  "1.14.1" = { sha256 = "sha256-iitwWFtgz4juqNFa6d6c+OzVo227gOOyWSwz+4cDgsc="; vendorSha256 = "sha256-hECWi+jWfrmIqzsWQSoWxohGbF9Hcg2ZkBHBaTrjK+U="; };
  "1.14.0" = { sha256 = "sha256-so+JtDcIWRF8HaoiqalxKxzl8ITonDABXK07guwIYRA="; vendorSha256 = "sha256-cCfC/PcpNRQ3UL7OGk2ydCN8wNPvyJTGYMANfqpMHKg="; };

  "1.13.8" = { sha256 = "sha256-GU6gYwMkIOWjBKfmbRLz4XY10gWiHYowo4ubTV6tfUM="; vendorSha256 = "sha256-18Lh5D8SpmJV53nn3vQWijkKDlitJYVp1SbUI/pFfY4="; };
  "1.13.7" = { sha256 = "sha256-i+95s9gFUvuCyciTj93URJxEGfs3TIzkS65UpXE8WIU="; vendorSha256 = "sha256-R/bzyS3HKM0C5+p8L0O9aiAz8N+SEoGUEvWcKf9XrmA="; };
  "1.13.6" = { sha256 = "sha256-jYWdrkcoHoBUHh+j85WDi2x4tmLxsMFsUD+fbYaRpIE="; vendorSha256 = "sha256-KGQp35M4iVJtQw6qKAHTePK5fqjpQN3YvQkdbN0gF8M="; };
  "1.13.5" = { sha256 = "sha256-peOCrLI+txAz0wDfKsHyJIhixhTNQobDLaZa28C/7TU="; vendorSha256 = "sha256-oOCum19r0gbB8pNVZbr+BGo9vfgvWE6rehRbNtxNOTQ="; };
  "1.13.4" = { sha256 = "sha256-lo3NAZOF5+lM3reN+izEfHA8LyIkrGGgWRLH3ZyC0Js="; vendorSha256 = "sha256-cfd1GSJtmOluBNGVGwaKr7fx6IR+psRWU4EJ8qmuFBY="; };
  "1.13.3" = { sha256 = "sha256-pTBeR7WP25Ng1OiVkZ60wTYnSOWahkx6LYHScnX0fWw="; vendorSha256 = "sha256-ZarkaUP9jwwP9FReaVAfPaQzKFETUEHsCsVDGFYKJvU="; };
  "1.13.2" = { sha256 = "sha256-+5I5hsVuLZve4FJHe41rKycWuKNv7UdxCSi4kaKk2/w="; vendorSha256 = "sha256-SjTG1/WhfGhLuUherVHEC3PmDz4HLMS2Cg0ReKTm0zk="; };
  "1.13.1" = { sha256 = "sha256-Svclb+tLb0gk3xhoslVvAZZf0LR2M5nR9BmMYLBBHck="; vendorSha256 = "sha256-bPfS8hoH45ad34CsR+9WLEDCDsx1E/ZKdipVZqirfDY="; };
  "1.13.0" = { sha256 = "sha256-bPLVQ5XvOk6cWtjHNtvZ3McM2SKVbjY6280rIldInpQ="; vendorSha256 = "sha256-bPfS8hoH45ad34CsR+9WLEDCDsx1E/ZKdipVZqirfDY="; };

  "1.12.9" = { sha256 = "sha256-OEgSqa7+sZGHzx5PiG5otLH1p6yo5CMhEssisYt9cKQ="; vendorSha256 = "sha256-P1GYqJdPt0esd6oacAh8w7Pvo0cKaQ1zFy8UMCENpTw="; };
  "1.12.8" = { sha256 = "sha256-aOA+Hw3hcpLt8qiNfZDFP+i3sLw4jF89Yw+1vMkhjqI="; vendorSha256 = "sha256-kLXxNhyOS36RlHtvOnOoLQLv8qfoCZD2XXepkDpBqfM="; };
  "1.12.7" = { sha256 = "sha256-I14sTX9ISMMVHmveDlfN90GNk81b8VY1w1ZBqyq14N0="; vendorSha256 = "sha256-8Es4V5kTi/FOv2cY4whtzfUkliuRCjWVKy+K3J987H4="; };
  "1.12.6" = { sha256 = "sha256-ap4yLR0k+mtOijOolVfhuimCRENB5IxQNHxA0h7jgm0="; vendorSha256 = "sha256-p7YJwY87TdtUdd6GvWe2ORNw4lyz24ST5Q5EcDJlFig="; };
  "1.12.5" = { sha256 = "sha256-mAkYaxxXLQevBsmPHMSrVYE4wEew26q292zokR+SINo="; vendorSha256 = "sha256-8+6zGvKbnGtcZ1ageSenBUnqAdZiw9+5E9JzHGnyqOY="; };
  "1.12.4" = { sha256 = "sha256-bRNPPIF1WC0tTiACo/YgL99nDdh4sWag0X+Rczjyxds="; vendorSha256 = "sha256-8PmjHAr9QLkeEpc5/+1SbtgEwijCEp2BbOBApSa9eYM="; };
  "1.12.3" = { sha256 = "sha256-QCSlRGbYCOOS81M7sl8Skr1/DhEX+U+0dCroWydzifw="; vendorSha256 = "sha256-3WjmAbY7AVApZZXdCfbjr2X9I8vvwR2EfNmCJv9Gk6A="; };
  "1.12.2" = { sha256 = "sha256-X2vW6fnT5IY+YxGnAP5Flk610vIwLg3Qu/rEerFyNCw="; vendorSha256 = "sha256-Qcm+uPlvzg0r+a/rYVCUaQ7iIgCpW7MyL7KrHkNm4XQ="; };
  "1.12.1" = { sha256 = "sha256-VSxgtsCPi3EdRWon3VBE9sC0lr5k5uDn/iMqrKAJeM0="; vendorSha256 = "sha256-Qcm+uPlvzg0r+a/rYVCUaQ7iIgCpW7MyL7KrHkNm4XQ="; };
  "1.12.0" = { sha256 = "sha256-O47s9eNZsqg0zpgoK2S4JvuOEqqVWvx8YmbQTvCw0Co="; vendorSha256 = "sha256-NRFGt8YA179C/OvyMGXYaZMUH685pJfdGB0AhMrCixs="; };
}
