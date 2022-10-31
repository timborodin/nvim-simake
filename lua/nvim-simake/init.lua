local m  = {}
local tt = nil

local cm  = "cmake -DBoost_COMPILER=gcc9 -DBENDER_WITHOUT_ONLOAD=True -DCMAKE_BUILD_TYPE=Debug -Bbuild"
local dir = "~/code/Bender2"

local setup = function ()
  if tt ~= nil then
    return
  end

  local Terminal = require("toggleterm.terminal").Terminal
  tt = Terminal:new { count = 2, direction = "horizontal" }
end

m.cmakeGenerate = function ()
  setup()
  tt:toggle()
  tt:send("cd " .. dir)
  tt:send(cm)
end

m.buildAll = function ()
  setup()
  tt:toggle()
  tt:send("cd " .. dir .. "/build")
  tt:send("make -j 16")
end

return m
