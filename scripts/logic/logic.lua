function mysplit (inputstr, sep)
    if sep == nil then
            sep = "%s"
    end
    local t={}
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
            table.insert(t, str)
    end
    return t
end

function has(item, amount)
    local count = Tracker:ProviderCountForCode(item)
    amount = tonumber(amount)
    if not amount then
        return count > 0
    else
        return count >= amount
    end
end

function has_or(itemOne, itemTwo)
    ret = 0
    itemOne = itemOne or ""
    itemTwo = itemTwo or ""

    for k,item in pairs({itemOne,itemTwo}) do
        if ret == 0 and has(item) then
            ret = 1
        end
    end

    return ret
end

function trick(trickType, trickLevel)
    trickType = trickType or ""
    trickLevel = trickLevel or 1

    -- can't exceed 4
    if (type(trickLevel) == "number" and trickLevel > 4) then trickLevel = 4 end
    -- if it's 0 or disabled, leave
    if (type(trickLevel) == "number" and trickLevel == 0) or
      (type(trickLevel) == "string" and trickLevel:lower() == "disabled") then
        return 1
    end

    -- if it's a string, convert it to a number
    if trickType ~= "" then
      if type(trickLevel) == "string" then
          local trickLevels = {
              ["disabled"]    = 0,
              ["normal"]      = 1,
              ["advanced"]    = 2,
              ["expert"]      = 3,
              ["insane"]      = 4
          }

          local lvl = trickLevels[trickLevel:lower()]
          if lvl then
              trickLevel = lvl
          end
      end

      local trickTypes = {
          ["smallkeys"] = "smallKeys",
          ["bigkeys"] = "bigKeys",
          ["splitgreaves"] = "splitGreaves",
          ["splitcling"] = "splitCling",
          ["momentum"] = "momentumConservation",
          ["onewall"] = "singleWallWallkick",
          ["reversewall"] = "reverseWallkicks",
          ["sunsetterabuse"] = "sunsetterFlipAbuse",
          ["ascendantabuse"] = "ascendantLightAbuse",
          ["clingabuse"] = "clingAbuse"
      }
      local trick = trickTypes[trickType:lower()]
      if trick then
          trickType = trick
      end

      -- return trick level user has selected for desired option
      return has("opt_" .. trickType, trickLevel)
    end

    return 0
end
