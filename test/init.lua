lighton=0
pin=0
gpio.mode(pin,gpio.OUTPUT)
tmr.alarm(0,200,1,function()
  if lighton==0 then
      lighton=1
      gpio.write(pin,gpio.HIGH)
  else
      lighton=0
      gpio.write(pin,gpio.LOW)
  end
end)

dofile("serial.lua")

