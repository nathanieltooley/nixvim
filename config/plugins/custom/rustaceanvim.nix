{
  plugins.rustaceanvim.enable = true;
  plugins.rustaceanvim.settings = {
    server = {
      default_settings = {
        rust-analyzer = {
          check = {
            command = "clippy";
          };
        };
      };
    };
  };
}
