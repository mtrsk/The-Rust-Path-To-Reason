{ pkgs ? import ./nix/pinned-nixpkgs.nix {} }:

pkgs.stdenv.mkDerivation {
  name = "rust-env";
  nativeBuildInputs = with pkgs; [
    rustc
	rustfmt
    cargo
    pkgconfig
  ];

  # Setting Environment Variables
  RUST_BACKTRACE = 1;
}
