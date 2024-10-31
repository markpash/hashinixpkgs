{ lib, buildGoModule, fetchFromGitHub }:

lib.attrsets.mapAttrs'
  (
    version: { sha256, vendorHash }:
    lib.attrsets.nameValuePair ("consul_" + (builtins.replaceStrings [ "." ] [ "_" ] version)) (
      (import ./consul.nix) { inherit lib buildGoModule fetchFromGitHub version sha256 vendorHash; }
    )
  )
{
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

  "1.15.10" = { sha256 = "sha256-xr5yuUH8e1LNN4MQxFQ2AgjlOWXDyG3wyXQVBhearFI="; vendorHash = "sha256-hJCdUpvzsRH3GO+Y9favXL8XTa3r2io+t1Na2mOqFVY="; };
  "1.15.9" = { sha256 = "sha256-ShVU0YUSGzI9zOtOqwT6MKvG64dz7V4ce9mxj4btrm8="; vendorHash = "sha256-afQ+4G/xNAVBRD7ycQoPWmNYHtNXiEE/hJJ8GCu5dUE="; };
  "1.15.8" = { sha256 = "sha256-yqw20NOxlMpdKmdPZAwWvFnod+XUmev3NRIKDNKx2wQ="; vendorHash = "sha256-09ufo62/n1Rr3PeBEvyueN3yomA5ekM9vssKI12pN6w="; };
  "1.15.7" = { sha256 = "sha256-Nz/IIgK55k6FKPBqzjFn6XcChyhXKBk8leE33iwbkq8="; vendorHash = "sha256-vgWF+Mn9OfB6qNdRn9qeoPxhn6vLFEfNtzrgyt2QQ4Q="; };
  "1.15.6" = { sha256 = "sha256-wZt6yCbZV+fwkN1Zf3Pq8lyujt7+krJe9ibcuguANRQ="; vendorHash = "sha256-KId3S7DSw8bqtLySt6aq5kfBLNtJHl76opU/8evkYJc="; };
  "1.15.5" = { sha256 = "sha256-7lQiRD32hALkTdKCLvNJpRV+38snTvN5u/P59nxFSEM="; vendorHash = "sha256-dTXhRXZUiMPXjVScIp7yBZMuexB3ZnzGFwpedm26U48="; };
  "1.15.4" = { sha256 = "sha256-ykb0DcHZhRCAoaqdqQ7MGBO/iNHaEA02OIzA0blrkRY="; vendorHash = "sha256-K8C3aiXKhZ9CCUytLin9h9zGqS/0z1/snl6Y56l8t1E="; };
  "1.15.3" = { sha256 = "sha256-Xe+baALN8Ow6vjneWAvC65cBSsrMAsdxjEQRBcvWxCw="; vendorHash = "sha256-tbwX/uF9+yIhd+KSGF2v7HjxGtfaZYSm+1GIspQmC9A="; };
  "1.15.2" = { sha256 = "sha256-8C06arK7QnrT5qQZWBjamOOlejy69pxRHXKoncfMKAc="; vendorHash = "sha256-Vcl23cWErAycmza1CS9rl+xJ7CBuocMAdSG9AA88SrQ="; };
  "1.15.1" = { sha256 = "sha256-U7/et05WOBP7TT8iSXD447dBzRDzrmoeOYFofp/Cwh0="; vendorHash = "sha256-6lYIwOpQjpw7cmeEhDtTs5FzagcAagD+NbfHCO9D/6M="; };
  "1.15.0" = { sha256 = "sha256-WJQHBSwmcJiUGt69DMMZxs+xEk3z+fadSHoHvxb48ZU="; vendorHash = "sha256-XwoZ/iwsZ/zXgPRGfBit5TO2NDS2pTEO0FT4KSUhJtA="; };

  "1.14.11" = { sha256 = "sha256-mRkmLpCPq4/AxdhS7ZPdm3r1nex2bu3D2gschrSZgoA="; vendorHash = "sha256-1V1N0sMgIDV0CIFLGEzWask7alVPSuw52nbUMyvRStw="; };
  "1.14.10" = { sha256 = "sha256-YOT/7LbIwAhXvQE6jB+jf5p9aOVF5KvYWRM/8pbWp+o="; vendorHash = "sha256-pKYUc/80cHXHfsRGNuqF+4mO60AghEEdN0JN561qm2k="; };
  "1.14.9" = { sha256 = "sha256-m+2FN4eivYj+M8F9VY6xRvDxyWD4qMCkKsSSrNdLk5s="; vendorHash = "sha256-7To4hle5KHKtbk7sn1Tqvh15/O0RdWKSFotvtFM6pIg="; };
  "1.14.8" = { sha256 = "sha256-9reJeauiBeVzbEuaVD6Zerdrb9cTHDNN7Pzf1DbjKmY="; vendorHash = "sha256-GX2gJM8xhDpQbeV3fnewjGMOjOUhUKATiA3DSbJBJBc="; };
  "1.14.7" = { sha256 = "sha256-ohbwufwDoUb8+u2OHxoKSrtIs969wupc6H6LXDIBT9I="; vendorHash = "sha256-6lLbIOonGh692UXqqNJvyefAehqXbqwfsGsJKbV9M/8="; };
  "1.14.6" = { sha256 = "sha256-cwefHV5CsH+0poz1u+AjsmXvHrC+Is7Hhblv1VN3CTQ="; vendorHash = "sha256-XmRNEbCd9q+iihSy94TzZicQdmmW/iKxXZEO3C5oBX0="; };
  "1.14.5" = { sha256 = "sha256-4TxBlOEe3vxvtV+EU6FmZE8n2QYWYbU7+44A51yqS/g="; vendorHash = "sha256-XmRNEbCd9q+iihSy94TzZicQdmmW/iKxXZEO3C5oBX0="; };
  "1.14.4" = { sha256 = "sha256-aPJcb7nIjNIT5Bt/On+KFHHA2bNBO4y7HDFpsjhh8j0="; vendorHash = "sha256-g7Pi/wOjClwcuqeHQjhqBtnORArx1G4Znqvfl0bf3V4="; };
  "1.14.3" = { sha256 = "sha256-zTsFLBd+7G+8HT8EGLSQaMhFfh/7s1tfu2gZtIMbkDs="; vendorHash = "sha256-tekrveDmUq6qYafRMm7knxp9+FevaDbu4DZusO6KDtA="; };
  "1.14.2" = { sha256 = "sha256-fSEQZ+F3b8l1F/80A4hDPHE7kZMPARQXt/PJg/m4Srw="; vendorHash = "sha256-4tidE6LKYhi8ilM08Rn3F5snhxebdgOOeSrIIkXZ384="; };
  "1.14.1" = { sha256 = "sha256-iitwWFtgz4juqNFa6d6c+OzVo227gOOyWSwz+4cDgsc="; vendorHash = "sha256-hECWi+jWfrmIqzsWQSoWxohGbF9Hcg2ZkBHBaTrjK+U="; };
  "1.14.0" = { sha256 = "sha256-so+JtDcIWRF8HaoiqalxKxzl8ITonDABXK07guwIYRA="; vendorHash = "sha256-cCfC/PcpNRQ3UL7OGk2ydCN8wNPvyJTGYMANfqpMHKg="; };
}
