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
redButton.x = display.contentWidth/2
redButton.y = display.contentHeight/2
redButton.isVisible = false 

-- create checkmark, set its position and make it invisible
local checkmark = display.newImageRect("Images/checkmark.png", 198, 96)
checkmark.x = display.contentWidth/2
checkmark.y = display.contentHeight/2
checkmark.isVisible = false 

-- create text object, set its position make it invisible 
local textObject = display.newText ("Clicked!", 0, 0, nil, 50)
textObject.x = display.contentWidth/2
textObject.y = display.contentHeight/3
textObject:setTextColor ( 255/255, 210/255, 203/255)
textObject.isVisible = false 

-- Function: BlueButtonListener
-- Input: touch listener
-- Output: none
-- Description: when blue button is clicked, it will make
-- the text apear and make the blue button disapear .
local function BlueButtonListener(touch) 
	if (touch.phase == "began") then
		blueButton.isVisible = false
		redButton.isVisible = true 
		textObject.isVisible = true 
		checkmark.isVisible = true 
	end 

	if (touch.phase == "ended") then
	    blueButton.isVisible = true 
	    redButton.isVisible = false
	    textObject.isVisible = false 
	end 
end 

-- add the respective listeners to each object
blueButton:addEventListener("touch", BlueButtonListener)

