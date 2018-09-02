wifi.setmode(wifi.STATIONAP)
--connect to Access Point (DO save config to flash)
station_cfg={}
station_cfg.ssid="SCUTNET"
station_cfg.pwd="0123456789"
station_cfg.save=true
wifi.sta.config(station_cfg)
wifi.sta.connect()
tmr.alarm(2, 1000, 1, function()
     if wifi.sta.getip() == nil then
         print("Connecting...")
     else
         tmr.stop(1)
         print("Connected, IP is "..wifi.sta.getip())
     end
end)
