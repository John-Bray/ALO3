size = { 1024, 1024 }  --We declare here the image size we are using
panelWidth3d  = 1024  -- I don't know why, but without these lines you cannot get the coords to work right
panelHeight3d = 1024

defineProperty("iPad1_mode",createGlobalPropertyf("jb/sasl/iPads/1/mode"))  -- 0=off, 1= EFIS or whatever, etc
set(iPad1_mode, -1)

defineProperty("iPadVisibility",createGlobalPropertyi("jb/sasl/iPads/visible"))  -- 0=off, 1= ON (INT)
set(iPadVisibility,  0) 

defineProperty("HudHidden",createGlobalPropertyi("jb/sasl/Hud/hidden"))  -- 0=visible, 1= hidden (killed) (INT)
set(HudHidden,  1) 

createProp("jb/sasl/currentWaypointID", "int", 0);
defineProperty("currentWaypointID",   globalPropertyi("jb/sasl/currentWaypointID"))

createProp("jb/sasl/cwpTest", "int", 0);
defineProperty("cwpTest",   globalPropertyi("jb/sasl/cwpTest"))
set(cwpTest,  0) 

createCommand("jb/sasl/iPads/toggle", "show_hide_iPads") -- jb/sasl/iPads/visible
createCommand("jb/sasl/yawDamper/toggle", "auto pedals ON/OFF")  -- jb_yawControl
createCommand("jb/sasl/hud/toggle", "show hide FlightPathMarker") -- jb/sasl/Hud/hidden

defineProperty("runTime",  globalPropertyf("sim/time/total_running_time_sec"))
lastCommandClick = get(runTime)


--Power
defineProperty(                 "IAS",  globalPropertyf("sim/flightmodel/position/indicated_airspeed"))
defineProperty("collectivePitch",  globalPropertyf("sim/flightmodel2/engines/prop_pitch_deg"))
defineProperty(        "pitchMax",  globalPropertyf("sim/aircraft/prop/acf_max_pitch"))
defineProperty(         "pitchMin",  globalPropertyf("sim/aircraft/prop/acf_min_pitch"))
defineProperty(           "throttle",  globalPropertyf("sim/cockpit2/engine/actuators/throttle_ratio_all"))
defineProperty(            "engTq",  globalPropertyf("sim/flightmodel/engine/ENGN_TRQ"))
defineProperty(        "engWatts",  globalPropertyf("sim/cockpit2/engine/indicators/power_watts"))
createProp      ("jb/sasl/TqPercent", "int", 0);
defineProperty("TqPercent",   globalPropertyi("jb/sasl/TqPercent"))
set(TqPercent,  0)

-- Pitch
defineProperty("pitchCyclic",  globalPropertyf("sim/joystick/yoke_pitch_ratio"))

-- Roll
defineProperty("rollCyclic",  globalPropertyf("sim/joystick/yoke_roll_ratio"))

-- Yaw
defineProperty("jb_yawControl",  createGlobalPropertyi("jb/sasl/afcs/yawControl"))  -- 0=off, 1= ON (INT)
defineProperty(          "yawRate", globalPropertyf("sim/flightmodel/position/R"))
defineProperty(        "yawForce",  globalPropertyf("sim/flightmodel/forces/N_total"))
defineProperty(             "pedals",  globalPropertyf("sim/cockpit2/controls/yoke_heading_ratio"))
defineProperty(          "TRPtitch",  globalPropertyf("sim/flightmodel2/engines/prop_pitch_deg[1]"))
defineProperty(          "TR_rpm", globalPropertyf("sim/cockpit2/engine/indicators/prop_speed_rpm[1]"))

--createProp("jb/sasl/hoverMode", "int", 0);
--defineProperty("jb_hoverMode",   globalPropertyi("jb/sasl/hoverMode"))

--createProp("jb/sasl/torqueReading","float", 0.0)
--defineProperty("jb_torqueReading",globalPropertyf("jb/sasl/torqueReading"))

--createProp    ("jb/sasl/climbAngle","float", 0.0)
--defineProperty("jb_climbAngle",    globalPropertyf("jb/sasl/climbAngle"))

defineProperty(             "panelLight1", globalPropertyf("sim/cockpit2/electrical/panel_brightness_ratio[1]"))
defineProperty(              "panelLight2", globalPropertyf("sim/cockpit2/electrical/panel_brightness_ratio[2]"))
defineProperty( "cockpit_lights_level", globalPropertyf("sim/cockpit/electrical/cockpit_lights"))
set(cockpit_lights_level, 0.5) -- otherwise you can't even find them to adjust in the dark!
defineProperty(                 "brightness",globalPropertyf("sim/cockpit2/electrical/instrument_brightness_ratio[0]")) -- the brightness level for dimming text 

defineProperty(            "batteryON", globalPropertyf("sim/cockpit2/electrical/battery_on"))
defineProperty(            "DCcurrent", globalPropertyf("sim/cockpit2/electrical/generator_amps"))
defineProperty(            "DCvoltage", globalPropertyf("sim/cockpit2/electrical/battery_voltage_indicated_volts"))
defineProperty(    "engOilPressure", globalPropertyf("sim/cockpit2/engine/indicators/oil_pressure_psi"))
defineProperty(         "engOilTemp", globalPropertyf("sim/cockpit2/engine/indicators/oil_temperature_deg_C"))
defineProperty(               "fuelFlow", globalPropertyf("sim/cockpit2/engine/indicators/fuel_flow_kg_sec"))
defineProperty(                  "fuelKg", globalPropertyf("sim/flightmodel/weight/m_fuel_total"))
defineProperty(                       "NF", globalPropertyf("sim/cockpit2/engine/indicators/N2_percent"))
defineProperty(                       "NR", globalPropertyf("sim/cockpit2/engine/indicators/prop_speed_rpm"))
defineProperty(                     "OAT", globalPropertyf("sim/cockpit2/temperature/outside_air_temp_degc"))

defineProperty(                  "COM1", globalPropertyf("sim/cockpit/radios/com1_freq_hz"))
defineProperty(                  "COM2", globalPropertyf("sim/cockpit/radios/com2_freq_hz"))
defineProperty(    "COM1_SBY_M", globalPropertyf("sim/cockpit2/radios/actuators/com1_standby_frequency_Mhz"))
defineProperty(    "COM1_SBY_k",  globalPropertyf("sim/cockpit2/radios/actuators/com1_standby_frequency_khz"))
defineProperty(    "COM2_SBY_M",  globalPropertyf("sim/cockpit2/radios/actuators/com2_standby_frequency_Mhz"))
defineProperty(     "COM2_SBY_k",  globalPropertyf("sim/cockpit2/radios/actuators/com2_standby_frequency_khz"))

defineProperty(                    "NAV1", globalPropertyf("sim/cockpit/radios/nav1_freq_hz"))
defineProperty(                    "NAV2", globalPropertyf("sim/cockpit/radios/nav2_freq_hz"))

defineProperty(     "NAV1_SBY_M", globalPropertyf("sim/cockpit2/radios/actuators/nav1_standby_frequency_Mhz"))
defineProperty(      "NAV1_SBY_k", globalPropertyf("sim/cockpit2/radios/actuators/nav1_standby_frequency_khz"))
defineProperty(      "NAV2_SBY_M", globalPropertyf("sim/cockpit2/radios/actuators/nav2_standby_frequency_Mhz"))
defineProperty(       "NAV2_SBY_k", globalPropertyf("sim/cockpit2/radios/actuators/nav2_standby_frequency_khz"))

defineProperty (                     "SQK", globalPropertyf("sim/cockpit/radios/transponder_code"))
defineProperty("transponder_mode", globalPropertyf("sim/cockpit/radios/transponder_mode"))

defineProperty(                 "MagVar", globalPropertyf("sim/flightmodel/position/magnetic_variation"))
defineProperty(            "currentLAT", globalPropertyf("sim/flightmodel/position/latitude"))
defineProperty(           "currentLON", globalPropertyf("sim/flightmodel/position/longitude"))

defineProperty(           "currentBaro", globalPropertyf("sim/cockpit/misc/barometer_setting"))
defineProperty(           "altitude_m", globalPropertyf("sim/flightmodel/position/elevation"))  -- in metres!

--defineProperty("alt_hold",  globalPropertyf("sim/cockpit2/autopilot/altitude_dial_ft"))          -- the altitude we want to hold
--defineProperty("altitude",  globalPropertyf("sim/cockpit2/gauges/indicators/altitude_ft_pilot")) -- the altiltude we are now
 
font_Sans10=loadFont('custom avionics/MS_Sans10.fnt')  
font_Sans12=loadFont('custom avionics/MS_Sans12.fnt')  
font_Sans24=loadFont('custom avionics/MS_Sans24.fnt')  

font_Sans36=loadFont('custom avionics/JB_Sans_36.fnt') -- numbers ONLY
font_led_24=loadFont('custom avionics/JB_LED_7S_24.fnt')
font_led_32=loadFont('custom avionics/JB_LED_7S_32.fnt')

-- http://kvazars.com/littera/ 
components = {

	Radios           {position={  256,     0, 440, 256} },

	iPad0             {position={      0,  416, 256, 192} },
	iPad1             {position={  256,  416, 256, 192} },
	iPad2             {position={  512,  416, 256, 192} },
	iPad3             {position={  756,  416, 256, 192} },
	
	commands     {position={      0,  256, 256, 110} },
	barometer      {position={  256,      0, 440, 256} }
	
}

set(panelLight1, 1)
set(panelLight2, 1)


-- =======================================================================================
--             returns {distance_nm, degreesTrue, degreesMag} from a start and end lat/lon
function LatLonToNmDegT(lat1, lon1, lat2, lon2)
  if lat1 == nil or lon1 == nil or lat2 == nil or lon2 == nil then
    return {nil, nil}
  end
  local NS = lat1 - lat2
  local EW = lon1 - lon2
  local NSnm = 60* NS -- should really be 59.91 for NS
  local EWnm = 60* EW * math.cos(math.rad(lat1))	
  local distance_nm = 0.1*math.floor(10*math.sqrt(NSnm*NSnm + EWnm*EWnm) )
  local degreesTrue = 270 -  math.deg(math.atan2(NSnm, EWnm))
  if degreesTrue > 360 then degreesTrue = degreesTrue -360 end
  local degreesMag = degreesTrue + get(MagVar) 
  return {distance_nm, degreesTrue, degreesMag}
end