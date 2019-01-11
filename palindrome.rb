# frozen_string_literal: true

def email_parts(email)
  email.downcase.split('@')
end

module Palindrome
  def palindrome?
    processed_content == processed_content.reverse
  end

  private

  def processed_content
    to_s.downcase
  end
end


class String
  include Palindrome
end
class Integer
  include Palindrome
end

class TranslatedPhrase < String
  attr_accessor :translation

  def initialize(content, translation)
    super(content)
    @translation = translation
  end

  def content_downcase
    processor(translation)
  end
end

phrase = String.new('Racecar')
puts phrase
puts phrase.palindrome?
puts phrase.louder

frase = TranslatedPhrase.new('recognize', 'reconocer')
puts frase.palindrome?

blank = String.new("a     ")
p blank.blank?
