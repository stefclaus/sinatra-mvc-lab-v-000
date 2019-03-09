class PigLatinizer
  attr_reader :user_phrase

  def initialize(user_phrase)
    @user_phrase = user_phrase
  end

  def piglatinize(user_phrase)
    alpha = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = alpha - vowels

    if vowels.include?(str[0])
      str + 'ay'
    elsif consonants.include?(str[0]) && consonants.include?(str[1])
      str[2..-1] + str[0..1] + 'ay'
    elsif consonants.include?(str[0])
      str[1..-1] + str[0] + 'ay'
    else
      str # return unchanged
    end
  end
  user_phrase
end
