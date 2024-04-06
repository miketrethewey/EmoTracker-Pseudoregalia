function EarlyPrison(segment)
    ret = 0

    if segment == "Setup" then
        ret = has("dreambreaker") or trick("knowledge")
    elseif segment == "Shortcut near Strong Eyes" then
        ret = has("smallkey") or (has("sunsetter") and has("dreambreaker") and trick("knowledge"))
    end

    if ret == 0 then
        print("Early Prison segment not found! '" .. segment .. "'")
    end

    return ret
end

function PEntryUnderBelly(segment)
    ret = 0

    if segment == "Wall that Sucks" then
        ret = has("dreambreaker") or (has("sunsetter") and trick("knowledge", "expert"))
    end

    if ret == 0 then
        print("PEntryUnderBelly segment not found! '" .. segment .. "'")
    end

    return ret
end
