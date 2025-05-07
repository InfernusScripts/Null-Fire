# Network📶 library documentation

## [WORKING ON ALL EXECUTORS AND FIXING STUFF ON BAD ONES]

### Getting the library
```lua
local network = loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/main/Core/Libraries/Network/Main.lua"))()
```
---
### -- Usage --
## Network ownership
- Better network ownership
```lua
network(true)
-- or
network:SetActive(true)
```
- Disable
```lua
network(false)
-- or
network:SetActive(false)
```
---
- Get current network ownership state:
```lua
print(network.Active) -- true / false
```
- Is network owner
```lua
local part = -- path of basepart
print(network:IsNetworkOwner(part)) -- true / false
```
---
## Fire
- Proximity prompt
```lua
local prompt = -- path of proximity prompt
local dont_do_distance_check = true -- / false
print(network.Other:ProximityPrompt(prompt, dont_do_distance_check)) -- true / false if proximity prompt been fired or not (distance check)
-- or
print(network.Other:FireProximityPrompt(prompt, dont_do_distance_check))
```
- Touch interest
```lua
local part = --path of basepart
network.Other:TouchInterest(part)
-- or
network.Other:TouchTransmitter(part)
-- or
network.Other:FireTouchInterest(part)
-- or
network.Other:FireTouchTransmitter(part)
```
---
- Touch part (Fire touch interest but with 1 argument)
```lua
local part = --path of basepart
network.Other:Touch(part)
-- or
network.Other:TouchPart(part)
```
- Sit
```lua
local seatPart = --path of basepart
network.Other:Sit(seatPart)
```
