display.setStatusBar(display.HiddenStatusBar)
display.setDefault('background', 0, 0.25, 0.25)

local w, h = 200, 100

--local group = display.newContainer(w, h)
local group = display.newGroup()

group:translate(110, 100)

local bg = display.newRect(group, 0, 0, w, h)

local img = display.newImage(group, 'world.jpg')
img.anchorX, img.anchorY = 0, 0

local label = display.newText(group, 'Hello, World!', 0, 0, native.systemFont, 30)
label:setFillColor(0.7, 0.35, 0)
label.anchorX, label.anchorY = 0, 0

local mask = graphics.newMask('mask.png')
display.setDefault('magTextureFilter', 'nearest')
group:setMask(mask)
display.setDefault('magTextureFilter', 'linear')
group.maskScaleX = w * 0.5
group.maskScaleY = h * 0.5
group.maskX = group.maskScaleX
group.maskY = group.maskScaleY

local newH = 200
transition.to(group, {time = 5000, maskScaleY = newH * 0.5, maskY = newH * 0.5, delay = 1000})