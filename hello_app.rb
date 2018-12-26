require 'sinatra'
require './day.rb'

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

get '/dupa8' do
  "Hello, world! Happy #{day_of_the_week(Time.now)} - from the file"
end

get '/greeting' do 
  greeting(Time.now)
end
