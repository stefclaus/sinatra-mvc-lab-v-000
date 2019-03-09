class PigLatinizer
  #attr_reader :user_phrase

  #def initialize
  #  @user_phrase = user_phrase
  #end

  def piglatinize(user_input)
      if user_input.split(" ").length == 1
          piglatinize_word(user_input)
      else
        piglatinize_sentence(user_input)
      end
    end

    def vowel?(char)
      char.match(/[aAeEiIoOuU]/)
    end

    def piglatinize_word(word)
      # word starts with vowel
      if vowel?(word[0])
        word = word + "w"
      # word starts with 3 consonants
    elsif !vowel?(word[0]) && !vowel?(word[1]) && !vowel?(word[2])
        word = word.slice(3..-1) + word.slice(0,3)
      # word starts with 2 consonants
    elsif !vowel?(word[0]) && !vowel?(word[1])
        word = word.slice(2..-1) + word.slice(0,2)
      # word starts with 1 consonant
      else
        word = word.slice(1..-1) + word.slice(0)
      end
      word << "ay"
    end

    def piglatinize_sentence(sentence)
      sentence.split.collect { |word| piglatinize_word(word) }.join(" ")
    end


end #ends class
