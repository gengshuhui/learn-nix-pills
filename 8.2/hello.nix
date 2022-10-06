#pill 8.2
with (import <nixpkgs> {});
derivation {
  name = "hello";
  builder = "${bash}/bin/bash";
  args = [ ./builder.sh ];
  buildInputs = [ gnutar gzip gnumake gcc coreutils gawk gnused gnugrep binutils.bintools ];
  src = ./hello-2.10.tar.gz;
  system = builtins.currentSystem;
}

