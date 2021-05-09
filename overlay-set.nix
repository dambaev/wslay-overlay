{pkgs ? {}}:
{
  wslay = pkgs.callPackage ./derivation.nix {};
}