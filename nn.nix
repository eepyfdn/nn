{ self, nixpkgs, ... }: config: {
  packages.x86_64-linux =
    {
      default = nixpkgs.legacyPackages.x86_64-linux.writeText "path_to_greatness"
        (builtins.toJSON
          (builtins.readDir
            self));
    };
}
