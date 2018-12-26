require 'date'

def day_of_the_week(time)
  Date::DAYNAMES[time.wday]
end

def greeting(time)
    "Hello, world! Happy #{day_of_the_week(Time.now)} - from the method"
end