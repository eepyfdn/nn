{
  description = "Flakes without boilerplate";
  outputs = inputs: {
    __functor = import ./nn.nix;
  };
}
