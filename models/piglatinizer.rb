class PigLatinizer

  def piglatinize(user_phrase)
    if user_phrase.split(" ").count > 1
      piglatinize_sentence
    else
      piglatinize_word
    end
  end

  def piglatinize_word(user_phrase)

    alpha = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = alpha - vowels

    arr = user_phrase.split(" ")

      if vowels.include?(arr[0])
        arr + 'way'
      elsif consonants.include?(arr[0]) && consonants.include?(arr[1])
        arr[2..-1] + arr[0..1] + 'ay'
      else consonants.include?(arr[0])
        arr[1..-1] + arr[0] + 'ay'
      end #ends if
    end #ends method

end #ends class
