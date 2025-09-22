{
  description = "abhi's nix config";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-25.05";
    nixpkgs-unstable.url = "nixpkgs/nixos-unstable";

    fix-python.url = "github:GuillaumeDesforges/fix-python";

    ida-pro-overlay = {
      url = "github:hideyosh1/ida-pro-overlay";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    inputs@{
      self,
      nixpkgs,
      fix-python,
      nixpkgs-unstable,
      ...
    }:
    let
      lib = nixpkgs.lib;
      system = "x86_64-linux";
    in
    {
      nixosConfigurations.abhi = lib.nixosSystem {
        inherit system;

        specialArgs = {
          inherit inputs;
          pkgsUnstable = import nixpkgs-unstable {
            inherit system;
            config.allowUnfree = true;
          };
        };

        modules = [
          ./configuration.nix
        ];
      };
    };
}
