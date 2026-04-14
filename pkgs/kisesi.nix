{
  pkgs,
  ...
}:
pkgs.python3Packages.buildPythonPackage rec {
  pname = "kisesi";
  version = "0.4.1";
  pyproject = true;

  build-system = [ pkgs.python3Packages.hatchling ];

  src = pkgs.fetchFromGitHub {
    owner = "eeriemyxi";
    repo = "kisesi";
    rev = "v${version}";
    sha256 = "sha256-XfGwx/+zY8l0pCfuiuZZWKrHKano2KNiW8zvlZtNGGc=";
  };
}
