function onEvent(name, value1, value2)
    if name == 'lyrics' then
        setTextString('lyric', value1)
        setTextColor('lyric', value2)
    end
end

function onCreate()
    setObjectCamera('lyric', 'Other')
    makeLuaText('lyric', '', screenWidth, 0, 545)
    addLuaText('lyric')
    setTextSize('lyric', 40)
end