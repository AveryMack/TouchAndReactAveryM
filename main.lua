-----------------------------------------------------------------------------------------
-- Title: TouchAndReact
-- Name: Avery Mack
-- Course: ICS2O/3C
-- This program displays a button that when I click on it, turns colour and
-- displays text and another object.
-- 
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

-- set background colour 
display.setDefault ("background", 153/255, 204/255, 206/255)

-- hide status bar
display.setStatusBar(display.HiddenStatusBar)

-- create blue button, set its position and make it visible 
local blueButton = display.newImageRect("Images/Fast Button Inactive@2x.png", 198, 96)
blueButton.x = display.contentWidth/2
blueButton.y = display.contentHeight/2
blueButton.isVisible = true 

-- create red button, set its position and make it invisible
local redButton = display.newImageRect("Images/Fast Button Active@2x.png", 198, 96)
redButton.x = display.newImage 






