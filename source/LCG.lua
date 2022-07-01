if not LCG then
local floor = math.floor

function LCG(seed)
	if not seed or seed < 0 or seed > 134455 then seed = math.random(0, 134455) end
	return function(a, b)
		if a then
			if not b then
				b, a = a, 1
			end
			local range = b - a + 1
			assert(range >= 1, 'interval is empty')
			seed = (seed*141 + 28411) % 134456
			return floor((seed/134456)*range) + a
		else
			seed = (seed*141 + 28411) % 134456
			return seed/134455
		end
	end
end

end