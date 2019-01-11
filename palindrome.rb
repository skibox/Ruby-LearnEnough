# frozen_string_literal: true

def email_parts(email)
  email.downcase.split('@')
end

class String
  def processor(string)
    downcase
  end

  def palindrome?
    content_downcase == content_downcase.reverse
  end

  def louder
    upcase
  end
  
  def blank?
    strip.length.zero?
  end

  private

  def content_downcase
    processor(self)
  end
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
