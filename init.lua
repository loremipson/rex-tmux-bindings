local M = {}

M.setup = function(opts)
  local p = (opts and opts.prefix) or "ctrl+b"

  -- Pass prefix through to the terminal
  rex.bind(p .. ">" .. p, "pane.send_key", { key = p })

  -- Tabs
  rex.bind(p .. ">c", "client.tab.new")
  rex.bind(p .. ">,", "client.tab.rename")
  rex.bind(p .. ">n", "client.tab.next")
  rex.bind(p .. ">p", "client.tab.previous")
  rex.bind(p .. ">shift+7", "client.tab.close") -- &

  -- Jump to tab by number
  for i = 1, 9 do
    rex.bind(p .. ">" .. i, "client.tab.goto", { index = i })
  end

  -- Session
  rex.bind(p .. ">shift+4", "session.rename") -- $

  -- Panes
  rex.bind(p .. ">shift+5", "pane.split", { direction = "right" }) -- %
  rex.bind(p .. ">shift+'", "pane.split", { direction = "down" })  -- "
  rex.bind(p .. ">x", "pane.close")
  rex.bind(p .. ">z", "pane.zoom")
end

return M
