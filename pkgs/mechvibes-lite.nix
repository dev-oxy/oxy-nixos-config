{
  pkgs,
  kisesi,
  ...
}:
pkgs.python3Packages.buildPythonPackage rec {
  pname = "mechvibes-lite";
  version = "0.4.1";
  pyproject = true;

  build-system = [ pkgs.python3Packages.hatchling ];

  src = pkgs.fetchFromGitHub {
    owner = "eeriemyxi";
    repo = "mechvibes-lite";
    rev = "v${version}";
    sha256 = "sha256-7xN9g139FB0Ok+jKwqYyR/QdWyjyZmapaTE4heF++4o=";
  };

  dependencies = with pkgs.python3Packages; [
    kisesi
    evdev
    click
    pyglet
    websockets
  ];
}
