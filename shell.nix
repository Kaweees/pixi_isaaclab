{
  pkgs ? import <nixpkgs> { config.allowUnfree = true; },
}:

pkgs.mkShell {
  buildInputs = with pkgs; [
    pixi
    nixfmt
    just
    pre-commit
  ];

  shellHook = ''
    export TMPDIR=/tmp
    just install
  '';
}
