{
  fetchFromGitHub,
  lib,
  rustPlatform,
}:

rustPlatform.buildRustPackage rec {
  pname = "bunnylol";
  version = "0.1.2-unstable-2025-04-14";

  src = fetchFromGitHub {
    owner = "facebook";
    repo = "bunnylol.rs";
    rev = "0e76d827fe96fc94019f81467f65248b5eb6f435";
    hash = "sha256-rjHIzNga+UARaK/0IIG20edul0SquHLCU7a0Dzibtx8=";
  };

  cargoHash = "sha256-+26XCS4VehutqEzb81yt1Ggd1N8D6FlL0vI2tuplDrE=";

  buildFeatures = [ "server" "cli" ];

  meta = {
    description = "Smart bookmark server and CLI: URL shortcuts for your browser's search bar and terminal";
    homepage = "https://github.com/facebook/bunnylol.rs";
    license = lib.licenses.mit;
    platforms = lib.platforms.linux;
    mainProgram = "bunnylol";
  };
}