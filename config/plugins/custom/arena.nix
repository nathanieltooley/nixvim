{ pkgs, ... }:
{
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "arena";
      src = pkgs.fetchFromGithub {
        owner = "dzfrias";
        repo = "arena.nvim";
        rev = "9ebbf55b4f0e3815e3caf3264cc1a2721b5111e9";
      };
    })
  ];
}
