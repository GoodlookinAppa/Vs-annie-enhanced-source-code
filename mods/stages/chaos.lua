function onCreate()
    makeLuaSprite('theSky','chaos',-900,-300)
    addLuaSprite('theSky',false)

    makeAnimatedLuaSprite('Pork','Porker Lewis',1400,-500)
    addAnimationByPrefix('Pork','Porker Lewis','Porker FG',24,true)
    addLuaSprite('Pork',true)
end

function onBeatHit()-- for every beat

    objectPlayAnimation('Pork','Porker FG',true)
 
 end