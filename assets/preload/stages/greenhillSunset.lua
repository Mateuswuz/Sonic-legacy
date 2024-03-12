function onCreatePost()
setProperty('camZooming', true)
setProperty('isCameraOnForcedPos', true)
setProperty('camFollowPos.x', getMidpointX('firebg'))
		setProperty('camFollow.x', getMidpointX('firebg') + 150)
		setProperty('camFollowPos.y', getMidpointY('firebg'))
		setProperty('camFollow.y', getMidpointY('firebg') + 630)


makeLuaSprite('bg1', 'stages/sunset/whatsupthesky', -1100, -250);
addLuaSprite('bg1', false)
scaleObject('bg1', 0.8, 0.8)

makeLuaSprite('bg2', 'stages/sunset/biggerbackrocks', -750, 30);
addLuaSprite('bg2', false)
scaleObject('bg2', 0.8, 0.8)

makeLuaSprite('bg3', 'stages/sunset/backrocks', -980, 50);
addLuaSprite('bg3', false)
scaleObject('bg3', 1, 1)

makeAnimatedLuaSprite('agua','stages/sunset/agua', -1050, 0)
addAnimationByPrefix('agua','agua','agua',12,true)
scaleObject('agua', 0.8, 0.8)
addLuaSprite('agua', false)

makeLuaSprite('bg4', 'stages/sunset/mmmpalms', -550, 50);
addLuaSprite('bg4', false)
scaleObject('bg4', 0.8, 0.8)

makeLuaSprite('bg5', 'stages/sunset/Ground', -1350, 550);
addLuaSprite('bg5', false)
scaleObject('bg5', 1, 1)

makeLuaSprite('bg6', 'stages/sunset/frontobjects', -1050, 150);
addLuaSprite('bg6', true)
scaleObject('bg6', 1.1, 1.1)

makeLuaSprite('blackk', 'stages/black', -1000, 0);
addLuaSprite('blackk', false)
setProperty('blackk.alpha', 0)
scaleObject('blackk', 10, 10)


makeAnimatedLuaSprite('cutscene','stages/sunset/Cool', 0, 0)
addAnimationByPrefix('cutscene','cool','cool',11,false)
scaleObject('cutscene', 1.5, 1.5)
setObjectCamera('cutscene', 'HUD')
addLuaSprite('cutscene', false)

--Hide
setProperty('bg1.visible', true);

setProperty('bg2.visible', true);

setProperty('bg3.visible', true);


setProperty('agua.visible', true);


setProperty('bg4.visible', true);

setProperty('bg5.visible', true);

setProperty('bg6.visible', true);
setProperty('bg6.alpha', 0.6)
setProperty('cutscene.visible', false);
end


function onEvent(n, v1, v2)
	if n == 'hi' then
   if v1 == '1' then
setProperty('defaultCamZoom', 0.65)
setProperty('isCameraOnForcedPos', false)
cancelTween('camFollowPosx')
cancelTween('camFollowPosY')
doTweenZoom('zoom2', 'camGame', 0.65, 1, 'sineOut')
doTweenAlpha('fadein1', 'bg6', 1, 1, 'sineIn');
doTweenAlpha('FadeHUD', 'camHUD', 1, 0.7, 'sineIn');
end
if v1 == 'bf' then
setProperty('isCameraOnForcedPos', true)

		setProperty('camFollow.x', getMidpointX('firebg') + 650)

		setProperty('camFollow.y', getMidpointY('firebg') + 630)
end
if v1 == 'cutscene' then
cameraFlash('other', 'FFFFFF', '0.5')
playAnim("cutscene","cool",true)
setProperty('cutscene.visible', true);
end
if v1 == 'no' then
triggerEvent('lyrics', '', 'FFFFFF')
setProperty('cutscene.visible', false);
addLuaSprite('bg6', false)
end
if v1 == 'ja' then
triggerEvent('Play Animation', 'idle-alt', 'Dad')
doTweenAlpha('SHIT', 'blackk', 0.5, 0.5, 'sineIn');
doTweenAlpha('SHIT2', 'bg6', 0.5, 0.5, 'sineIn');
  end
 end
end
