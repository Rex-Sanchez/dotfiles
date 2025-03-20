local luasnip = require "luasnip"


local s = luasnip.snippet
local t = luasnip.text_node
local i = luasnip.insert_node


luasnip.add_snippets("systemd", {
  s("base", {
    t({ "[Unit]", "" }),
    t({ "Description=", }), i(1, "some Description"),
    t({ "", "After=" }), i(2),
    t({ "", "", "[Service]", "" }),
    t("Restart="), i(3, "on-failure"),
    t({ "", "RestartSec=1", "" }),
    t("ExecStart="), i(4),
    t({ "", "", "[Install]", "" }),
    t("WantedBy=default.target")
  })
})
