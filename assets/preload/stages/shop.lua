
local u = false;
local r = 0;
local i =0
local shot = false;
local agent = 1
local health = 0;
local xx = 455;
local yy = 370;
local xx2 = 550;
local yy2 = 490;
local ofs = 20;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()

	makeLuaSprite('light', 'phone light', 125, -335);
	setScrollFactor('light', 1, 1);
	scaleObject('light', 1, 1);
	setBlendMode('light','screen')
	setProperty('light.alpha', 0.5)

	makeAnimatedLuaSprite('shopbg','shopbg', -1000, -50);
	scaleObject('shopbg', 0.8, 0.8)
	setScrollFactor('shopbg', 0.8, 0.8)
    objectPlayAnimation('shopbg','shopbg idle',true);
    addAnimationByPrefix('shopbg','dance','shopbg idle',30,true);

	makeLuaSprite('desk', 'desk', -1200, 650);
	setScrollFactor('desk', 1, 1);
	scaleObject('desk', 1	, 1);

	makeLuaSprite('bartop', 'bartop', -300, -130);
	setScrollFactor('bartop', 0, 0);
	scaleObject('bartop', 1	, 1);

	makeLuaSprite('barbot', 'barbot', -300, 720);
	setScrollFactor('barbot', 0, 0);
	scaleObject('barbot', 1	, 1);

	makeLuaSprite('back2', 'back2', 400, -150);
	scaleObject('back2', 1, 1);
	setScrollFactor('back2', 0.4, 0.4);
	setProperty('back2.alpha', 0.5)

	makeLuaSprite('overlay', 'overlay', -490, -150);
	scaleObject('overlay', 1, 1);
	setScrollFactor('overlay', 0.4, 0.4);
	setBlendMode('overlay', 'add')
	setProperty('overlay.alpha', 0.3)

	addLuaSprite('back2', false);
	addLuaSprite('shopbg', false)
	addLuaSprite('light', true);
	addLuaSprite('desk', true);
	addLuaSprite('overlay', true)
	addLuaSprite('bartop', true)
	addLuaSprite('barbot', true)

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end