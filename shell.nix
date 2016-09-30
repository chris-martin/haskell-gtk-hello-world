{ pkgs ? import <nixpkgs> {}, ghc ? pkgs.ghc }:

pkgs.haskell.lib.buildStackProject {
  name = "hello-world";
  inherit ghc;

  buildInputs = with pkgs; [
    cairo
    glib
    gtk2
    pango
    pkgconfig
    xorg.libX11
    xorg.libXrandr
    xorg.libXext
    zlib
  ];
}
