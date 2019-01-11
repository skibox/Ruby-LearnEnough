# frozen_string_literal: true

def sandwitch
  puts 'top bread'
  yield
  puts 'bottom bread'
end

sandwitch do
  puts 'Mutton, lettuce, tomato'
end

def tag(tagname, text)
  html = "<#{tagname}>#{text}</#{tagname}>"
  yield html
end

tag('p', 'Lorem ipsum dolor sit amet') do |markup|
  puts markup
end

def plurarize(n, singular, plural = nil)
  if n == 1
    "#{n} #{singular}"
  elsif plural
    "#{n} #{plural}"
  else
    "#{n} #{singular}s"
  end
end

99.downto(1) { |n| puts plurarize(n, 'bottle') }
