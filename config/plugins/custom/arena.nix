{ pkgs, ... }:
{
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "arena";
      src = pkgs.fetchFromGitHub {
        owner = "dzfrias";
        repo = "arena.nvim";
        rev = "9ebbf55b4f0e3815e3caf3264cc1a2721b5111e9";
        hash = "sha256-55jXZdtFWVfzUgfvy3FyglLjIuktVqILzGFGODCSeTY=";
      };
    })
  ];

  extraConfigLua = ''
    require('arena').setup()
  '';

  keymaps = [
    {
      key = "<leader>a";
      action.__raw = ''function() require("arena").toggle() end'';
      options.desc = "Toggle Arena buffer viewer";
    }
  ];
}
