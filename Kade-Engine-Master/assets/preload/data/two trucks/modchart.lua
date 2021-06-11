function start (song)
	print("Song: " .. song .. " @ " .. bpm .. " downscroll: " .. downscroll)
end

function update (elapsed) 
       local currentBeat = (songPos / 1000)*(bpm/60)
       for i=0,3 do
               setActorX(_G['defaultStrum'..i..'X'],i)
	       setActorY(_G['defaultStrum'..i..'Y'],i)
       end
end

function stepHit (step)
    if curStep == 347 or curStep == 603 or curStep == 987 or curStep == 1268 or curStep == 1281 or curStep == 1297 or curStep == 1315 then
        for i = 0, 3 do
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'],getActorAngle(i) + 360, 0.5, 'setDefault')
        end
    end
end

function beatHit (beat)

end

print("Mod Chart script loaded :)")