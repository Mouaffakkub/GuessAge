-----------------------------------------------------------------------------------------
-- Created by: Mouaffak Koubeisy
-- Created on: April 8th 2018
-----------------------------------------------------------------------------------------

local ageTextField = native.newTextField( display.contentCenterX , display.contentCenterY - 300, 450, 75 )
ageTextField.id = "age textField"

local ageField = display.newText( " Guess My Age ", display.contentCenterX , display.contentCenterY - 500, native.systemFont, 85 )
ageField.id = "age textField"
ageField:setFillColor( 1, 1, 1 )

local rightField = display.newText( "", display.contentCenterX , display.contentCenterY + 500, native.systemFont, 85 )
rightField.id = "right textField"
rightField:setFillColor( 1, 1, 1)

local lowerField = display.newText( "", display.contentCenterX , display.contentCenterY + 500, native.systemFont, 85 )
lowerField.id = "lower textField"
lowerField:setFillColor( 1, 1, 1)

local higherField = display.newText( "", display.contentCenterX , display.contentCenterY + 500, native.systemFont, 85 )
higherField.id = "higher textField"
higherField:setFillColor( 1, 1, 1)

local calculateButton = display.newImageRect( "./assets/sprites/enterButton.jpg", 425, 251 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY
calculateButton.id = "calculate button"

local age

local function calculateButtonTouch( event )

    age = ageTextField.text
    if age =  then
        rightField.text = " You guessed right! "
    elseif age > 16 then
    	lowerField.text = " A little lower "
    else higherField.text = " A little higher "
    return true
end

calculateButton:addEventListener( "touch", calculateButtonTouch )