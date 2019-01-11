# frozen_string_literal: true

# Map
#============================
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

p imperative_urls(states)
p functional_urls(states)
p url_array(states)

# Select
# =======================================

def imperative_singles(states)
  singles = []
  states.each do |state|
    if (state.split(/\s+/).length == 1)
      singles << state
    end
  end
  singles
end

def functional_singles(states)
  states.select { |state| state.split.length == 1 }
end

p imperative_singles(states)
p functional_singles(states)

def dakotas_include(states)
  states.select { |state| state.include?('Dakota')}
end

def dakotas_regex(states)
  states.select { |state| state.split(/\s+/).length == 2 }
end

p dakotas_include(states)
p dakotas_regex(states)

numbers = 1..10

def imperative_sum(numbers)
  total = 0
  numbers.each { |n| total += n }
  total
end

def functional_sum(numbers)
  numbers.reduce { |total, n| total + n }
end

p imperative_sum(numbers)
p functional_sum(numbers)

def imperative_lengths(states)
  lengths = {}
  states.each do |state|
    lengths[state] = state.length
  end
  lengths
end

def functional_lengths(states)
  states.reduce({}) do |lengths, state|
    lengths[state] = state.length
    lengths
  end
end

p imperative_lengths(states)
p functional_lengths(states)

def product_of(numbers)
  numbers.reduce(:*)
end

p product_of(numbers)