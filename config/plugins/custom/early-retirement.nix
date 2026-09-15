{ pkgs, ... }:
{
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "nvim-early-retirement";
      src = pkgs.fetchFromGitHub {
        owner = "chrisgrieser";
        repo = "nvim-early-retirement";
        rev = "8ddd369731c3a123a062ccc75c5c9ed54ffec9c1";
      };
    })
  ];

  extraConfigLua = ''
    require('nvim-early-retirement').setup()
  '';
}
