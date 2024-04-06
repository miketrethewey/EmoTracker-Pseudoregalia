-- LOGIC
print("Loading Logic")
ScriptHost:LoadScript("scripts/logic/logic.lua")
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
Tracker:AddLocations("locations/dungeon.json")
Tracker:AddLocations("locations/lowerCastle.json")
Tracker:AddLocations("locations/library.json")
Tracker:AddLocations("locations/keep.json")
Tracker:AddLocations("locations/bailey.json")
Tracker:AddLocations("locations/caves.json")
Tracker:AddLocations("locations/tower.json")
Tracker:AddLocations("locations/theatre.json")
--Tracker:AddLocations("locations/starts.json")
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
