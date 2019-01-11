# frozen_string_literal: true

states = ['Kansas', 'Nebraska', 'North Dakota', 'South Dakota']

def imperative_urls(states)
  urls = []
  states.each do |state|
    urls << urlify(state)
  end
  urls
end

def functional_urls(states)
  states.map { |state| urlify(state) }
end

def urlify(string)
  string.downcase.split.join('-')
end

def url_array(states)
  states.map { |state| urlify(state).prepend('https://example.com/') }
end

# p imperative_urls(states)
# p functional_urls(states)

p url_array(states)
