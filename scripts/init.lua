-- LOGIC
print("Loading Logic")
ScriptHost:LoadScript("scripts/logic/logic.lua")
ScriptHost:LoadScript("scripts/logic/locations/dungeon.lua")
ScriptHost:LoadScript("scripts/logic/locations/lowerCastle.lua")
print("")

-- ITEMS
print("Loading Items")
Tracker:AddItems("items/items.json")
Tracker:AddItems("items/settings.json")
--Tracker:AddItems("items/starts.json")
print("")

-- MAPS
print("Loading Maps")
Tracker:AddMaps("maps/maps.json")
print("")

-- LOCATIONS
print("Loading Locations")
Tracker:AddLocations("locations/dungeon/entrances.json")
Tracker:AddLocations("locations/dungeon/dungeon.json")
Tracker:AddLocations("locations/lowerCastle/entrances.json")
Tracker:AddLocations("locations/lowerCastle/lowerCastle.json")
Tracker:AddLocations("locations/library/library.json")
Tracker:AddLocations("locations/keep/keep.json")
Tracker:AddLocations("locations/bailey/bailey.json")
Tracker:AddLocations("locations/caves/caves.json")
Tracker:AddLocations("locations/tower/tower.json")
Tracker:AddLocations("locations/theatre/theatre.json")
--Tracker:AddLocations("locations/starts/starts.json")
print("")

-- GRIDS
print("Loading Grids")
Tracker:AddLayouts("layouts/grids/powerups.json")
Tracker:AddLayouts("layouts/grids/aspects.json")
Tracker:AddLayouts("layouts/grids/consumables.json")
Tracker:AddLayouts("layouts/settings/set_options.json")
Tracker:AddLayouts("layouts/settings/set_tricks.json")
Tracker:AddLayouts("layouts/maps/maps.json")
print("")

-- LAYOUTS
print("Loading Layouts")
Tracker:AddLayouts("layouts/tracker.json")
Tracker:AddLayouts("layouts/broadcast.json")
print("")
