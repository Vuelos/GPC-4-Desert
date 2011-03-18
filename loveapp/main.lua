-- 
--  main.lua
--  xenofarm
--  
--  Created by Jay Roberts on 2011-01-20.
--  Copyright 2011 GloryFish.org. All rights reserved.
-- 

require 'middleclass'
require 'middleclass-extras'

require 'gamestate'
require 'scene_menu'
require 'logger'

function love.load()
  love.graphics.setCaption('Unrequited by Jay Roberts')

  -- Seed random
  local seed = os.time()
  math.randomseed(seed);
  math.random(); math.random(); math.random()  

  fonts = {
    default = love.graphics.newFont('resources/fonts/silkscreen.ttf', 24),
    large =  love.graphics.newFont('resources/fonts/silkscreen.ttf', 48)
  }

  music = {}

  Gamestate.registerEvents()
  Gamestate.switch(menu)
end

function love.update(dt)
end
