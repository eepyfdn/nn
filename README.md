# jjj

Flakes without boilerplate.

```nix
{
  inputs.__functor.url = "github:jack5079/jjj";
  inputs.nixpkgs.url = "nixpkgs/nixos-unstable";
  outputs = j: j j;
}
```

or alternatively

```nix
{
  inputs.jjj.url = "github:jack5079/jjj";
  inputs.nixpkgs.url = "nixpkgs/nixos-unstable";
  outputs = inputs: inputs.jjj inputs;
}
```
