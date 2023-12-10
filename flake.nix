{
  description = "Flakes without boilerplate";
  outputs = _: {
    lib.nn = import ./nn.nix;
    __functor = _: inputs: import ./nn.nix inputs;
  };
}
