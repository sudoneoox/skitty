{ stdenv, lib, ... }:
let
  kitty = ./src;
in
stdenv.mkDerivation {
  pname = "skitty";

  version = "0.0.1";

  buildCommand = ''
    mkdir -p $out
    cp -r ${kitty}/* "$out/"
  '';

  meta = with lib; {
    description = "diego's kitty shell config";
    homepage = "sudoneoox.github.io";
    platforms = platforms.all;
    licenses = license.glp3;
  };
}
