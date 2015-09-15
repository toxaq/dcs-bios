BIOS.protocol.beginModule("P-51D", 0x1800)
BIOS.protocol.setExportModuleAircrafts({"P-51D"})

local document = BIOS.util.document

local defineIndicatorLight = BIOS.util.defineIndicatorLight
local defineFloat = BIOS.util.defineFloat
local definePotentiometer = BIOS.util.definePotentiometer

defineIndicatorLight("LG_GREEN", 80, "Main Panel", "Landing Gear Green Light")
defineIndicatorLight("LG_RED",   82, "Main Panel", "Landing Gear Red Light")

defineFloat("ENGINE_RPM", 23, {0, 1}, "Main Panel", "Engine RPM")
defineFloat("MANIFOLD_PRESSURE", 10, {0, 1}, "Main Panel", "Manifold pressure")

-- Get device id from devices.lua
definePotentiometer("THROTTLE",      5, 3021, 43,  {0.0, 1.0}, "ENGINE_SYSTEM", "Throttle")
definePotentiometer("PROPELLER_RPM", 5, 3022, 46,  {0.0, 1.0}, "ENGINE_SYSTEM", "Propeller RPM")


BIOS.protocol.endModule()