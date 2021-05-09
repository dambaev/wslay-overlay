{ stdenv, pkgs, fetchzip, fetchpatch, fetchgit, fetchurl }:
let
  versionPkg = "1.1.1";
in
stdenv.mkDerivation {
  name = "wslay";
  version = versionPkg;

  src = fetchgit {
    url = "https://github.com/tatsuhiro-t/wslay.git";
    rev = "c9a84aa6df8512584c77c8cd15be9536b89c35aa";
    sha256 = "1w32iljg4inqf0712w5fxxhggvmjh6ipl2lnz0h36dv1xrj0d964";
  };
  buildInputs = with pkgs;
  [ automake
    autoconf
    libtool
    pkg-config
    python38Packages.sphinx
  ];
  preConfigure = ''
    autoreconf -i
    automake
    autoconf
  '';

}
