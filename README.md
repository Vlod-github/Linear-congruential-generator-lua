# Linear congruential generator
Linear congruential generator implementation in lua. The period of the generator with current parmeters A C M - 134456.
## Example
```lua
local rand = LCG(0) -- seed in the range from 0 to 134455
local rand = LCG() -- for random seed

-- 0. <= output <= 1.
print(rand()) --> 0.378
print(rand()) --> 0.572
print(rand()) --> 0.739

-- 0 <= output <= 4
print(rand(0, 4)) --> 4
print(rand(0, 4)) --> 0
print(rand(0, 4)) --> 1

-- 1 <= output <= 3
print(rand(3)) --> 3
print(rand(3)) --> 1
print(rand(3)) --> 2
```