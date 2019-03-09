class PigLatinizer
  attr_accessor :user_phrase

  def initialize
    @user_phrase = user_phrase
  end

  def piglatinize(user_phrase)
    alpha = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = alpha - vowels

    if vowels.include?(user_phrase[0])
      user_phrase + 'way'
    elsif consonants.include?(user_phrase[0]) && consonants.include?(user_phrase[1])
      user_phrase[2..-1] + user_phrase[0..1] + 'ay'
    else consonants.include?(user_phrase[0])
      user_phrase[1..-1] + user_phrase[0] + 'ay'
    end
  end

end
