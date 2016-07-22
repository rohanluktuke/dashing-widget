require 'rest-client'
require 'json'


#url = 'https://api.wmata.com/NextBusService.svc/json/jPredictions'
#request = {"StopID" => '1001195'}.to_json
#response = RestClient.post(url, #
#	request,
#	:content_type => :json, :accept => :json, :'x-auth-key' => "mykey")


url = 'https://api.wmata.com/NextBusService.svc/json/jPredictions?StopID=1001878'
response = RestClient.get url, {"api_key" => '0b30a24a9d3d46ccbf0f4da7364cb6f6'} 

parsed = JSON.parse(response)
#puts parsed

puts "=========="

array_predictions = parsed["Predictions"]
#puts array_predictions
puts parsed['StopName']

array_predictions.each {
	|prediction|
	puts prediction['RouteID'] + " | " + "#{prediction['Minutes']}"
}


puts "done"