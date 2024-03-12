function goodNoteHit(id, direction, noteType, isSustainNote)
    if curBeat % 1 == 0 then


        cancelTween("scoreTxtX")
        cancelTween("scoreTxtY")
       scaleObject('scoreTxt', 1, 1)
        doTweenX("scoreTxtX", "scoreTxt.scale", 1, 0.3, "sineOut")
        doTweenY("scoreTxtY", "scoreTxt.scale", 1, 0.2, "sineOut")
    end

end
