<h1 align="center"><picture>
  <source media="(prefers-color-scheme: dark)" srcset="assets/logo-white.svg">
  <source media="(prefers-color-scheme: light)" srcset="assets/logo-black.svg">
  <img alt="" src="assets/logo-black.svg" width="24" height="33.1752">
</picture><br>nn</h1>

Flakes without boilerplate.

  ```nix
  {
    outputs = n: n {};
    inputs.__functor.url = "github:eepyfdn/nn";
    inputs.nixpkgs.url = "nixpkgs/nixos-unstable";
  }
  ```

## Reference

A folder structure like

```
oxymoron/
  package.nix
  nixos-module.nix
mollerbot@x86_64-linux/
  configuration.nix
flake.nix
```

gets turned into a flake output like

```nix
{ nixpkgs, ... }@inputs: let
  forAllSystems = function:
    nixpkgs.lib.genAttrs [
      "aarch64-darwin"
      "aarch64-linux"
      "x86_64-darwin"
      "x86_64-linux"
    ] (system: function nixpkgs.legacyPackages.${system});
in forAllSystems
  (pkgs: {
    packages.oxymoron = pkgs.callPackage ./oxymoron/package.nix;
  }) // {
  nixosModules.oxymoron = import ./oxymoron/nixos-module.nix;
  nixosConfigurations.mollerbot = nixpkgs.lib.nixosSystem {
    system = "x86_64-linux";
    specialArgs = { inherit inputs; };
    modules = [ "./mollerbot@x86_64-linux/configuration.nix" ];
  };
}
```
