{ pkgs ? import <nixpkgs> {}, ...} :
let
  idrisWithPackages = pkgs.idrisPackages.with-packages;
  idris = idrisWithPackages ([ pkgs.idrisPackages.builtins pkgs.idrisPackages.contrib pkgs.idrisPackages.lightyear ]);
in pkgs.stdenv.mkDerivation {
  name = "consistent";
  buildInputs = [ idris ];
  buildPhase = ''
    idris --build plm.ipkg
  '';
  installPhase = ''
    mkdir -p $out
    cp plm $out/plm
  '';
}
