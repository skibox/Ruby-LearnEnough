require 'sinatra'
require 'date'

get '/' do
	DAYNAMES = ["Sunday", "Monday", "Tuesday", "Wednesday",
              "Thursday", "Friday", "Saturday"]	
    dayname = DAYNAMES[Time.now.wday]
    "Happy #{dayname}."
end

get '/date' do
  dayname = Date::DAYNAMES[Time.now.wday]
  "Hello, world! Happy #{dayname}."
end