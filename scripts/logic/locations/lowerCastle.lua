function CsMain(segment)
    ret = 0

    if segment == "Wallkick Tunnel:Switch or Skip" then
        ret = has("dreambreaker") or
            (has("sunsetter") and trick("knowledge")) or
            (has("sungreaves") and has("heliacalpower") and trick("onewall")) or
            (has("solarwind") and trick("movement","advanced"))
    elseif segment == "Wallkick Tunnel:Getting Here not an Issue" then
        ret = (has("sungreaves") and has("clinggem", 6)) or
            (has("sungreaves") and has("solarwind") and trick("movement") and trick("onewall")) or
            (has("clinggem", 2) and has("solarwind")) or
            (has("clinggem", 2) and has("sungreaves")) or
            (has("clinggem", 2) and has("heliacalpower") and trick("movement","advanced") and trick("onewall"))
    end

    return ret
end
