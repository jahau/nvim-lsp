local configs = require 'nvim_lsp/configs'
local util = require 'nvim_lsp/util'
local lsp = vim.lsp

configs.flow = {
  default_config = {
    cmd = {"npm", "run", "flow","lsp"};
    filetypes = {"javascript", "javascriptreact", "javascript.jsx"};
    root_dir = util.root_pattern(".flowconfig");
    log_level = lsp.protocol.MessageType.Warning;
    settings = {};
  };
  docs = {
    package_json = "https://raw.githubusercontent.com/flowtype/flow-for-vscode/master/package.json";
    description = [[
https://flow.org/
https://github.com/facebook/flow

See below for how to setup Flow itself.
https://flow.org/en/docs/install/

See below for lsp command options.

```sh
npm run flow lsp -- --help
```
    ]];
    default_config = {
      root_dir = [[root_pattern(".flowconfig")]];
    };
  };
};
-- vim:et ts=2 sw=2
