function onCreate()
    makeLuaSprite('theSky','sky',-600,-300)
    addLuaSprite('theSky',false)
    setLuaSpriteScrollFactor('theSky', 0.2, 0.2);

    makeLuaSprite('theGround','ground',-370,590)
    addLuaSprite('theGround',false)
    setLuaSpriteScrollFactor('theGround', 0.8, 0.8);

    makeLuaSprite('leArmadillo','armadillo',110,700)
    addLuaSprite('leArmadillo',true)
    setLuaSpriteScrollFactor('leArmadillo', 1.0, 0.9);

    makeLuaSprite('leArmadillo2','armadillo2',1300,710)
    addLuaSprite('leArmadillo2',true)
    setLuaSpriteScrollFactor('leArmadillo2', 1.0, 0.9);

    makeAnimatedLuaSprite('Arthur','arthurbounce',1100,140)
    addAnimationByPrefix('Arthur','arthurbounce','Arthurbounce',24,true)
    addLuaSprite('Arthur',false)

    makeAnimatedLuaSprite('John','john',20,40)
    addAnimationByPrefix('John','john','john',30,true)
    addLuaSprite('John',false)


end  


function onBeatHit()-- for every beat

    objectPlayAnimation('Arthur','arthurbounce',true)
 
 end

function onStepHit()
	if curBeat < 388 then
		if curStep % 4 == 0 then
			doTweenY('rrr', 'camHUD', -12, stepCrochet*0.002, 'circOut')
			doTweenY('rtr', 'camGame.scroll', 12, stepCrochet*0.002, 'sineIn')
		end
		if curStep % 4 == 2 then
			doTweenY('rir', 'camHUD', 0, stepCrochet*0.002, 'sineIn')
			doTweenY('ryr', 'camGame.scroll', 0, stepCrochet*0.002, 'sineIn')
		end
	end
end
