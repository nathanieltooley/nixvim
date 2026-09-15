{ pkgs, ... }:
{
  extraPlugins = [
    (pkgs.vimUtils.mkVimPlugin {
      name = "hbac";
      src = pkgs.fetchFromGitHub {
        owner = "axkirillov";
        repo = "hbac.nvim";
        rev = "600896c302fb9232559b93200ed2caab8bd8e28e";
      };
    })
  ];

  extraConfigLua = "require('hbac').setup()";
}
