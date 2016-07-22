require 'json'
require 'pp'

groceries = ["apple", "watermelon", "bread"]

groceries.each do |food|
	if(food != "watermelon")
		puts "get some #{food}"
	end
end


json = File.read('stops.json')
obj = JSON.parse(json)
#pp obj


#pp obj['stops']


obj_keys = obj.keys

puts "#{obj_keys}"

stops = obj['stops']



stops.each do |stop|
	puts "#{stop['RouteID']}"
	puts stop['Minutes']
end

#https://www.youtube.com/watch?v=Dji9ALCgfpM
# 07/13/2016
#Primary key0b30a24a9d3d46ccbf0f4da7364cb6f6
#Hide | Regenerate
#econdary keyf27f586cb205427a952cff89498b14e8

def mtdarray
	10.times do |num|
		square = num * num
		return num, square if num > 4
	end
end

# parallel assignment
original, square = mtdarray

puts original
puts square




