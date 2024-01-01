<h1 align="center"><picture>
  <source media="(prefers-color-scheme: dark)" srcset="assets/logo-white.svg">
  <source media="(prefers-color-scheme: light)" srcset="assets/logo-black.svg">
  <img alt="" src="assets/logo-black.svg" width="24" height="33.1752">
</picture><br>nn</h1>

Flakes without boilerplate.

```nix
{
  inputs.__functor.url = "github:jack5079/nn";
  inputs.nixpkgs.url = "nixpkgs/nixos-unstable";
  outputs = n: n {};
}
```

## Configurations using `nn`

- [Jack](https://github.com/jack5079/dotfiles)
- [Charlie](https://github.com/caffeinatedcharlie/dotfiles)
