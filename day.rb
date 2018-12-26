require 'date'

def day_of_the_week(time)
  Date::DAYNAMES[time.wday]
end