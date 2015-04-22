class String
  define_method(:scrabble_score) do
    valid_letters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    words =
    {"a"=>1,"e"=>1,"i"=>1,"o"=>1,"u"=>1,"l"=>1,"n"=>1,"r"=>1,"s"=>1,"t"=>1,"d"=>2,"g"=>2,"b"=>3,"c"=>3,"m"=>3,"p"=>3,
    "f"=>4,"h"=>4,"v"=>4,"w"=>4,"y"=>4,"k"=>5,"j"=>8,"x"=>8,"q"=>10,"z"=>10}

  indexed_word = self.downcase().split(//)
  loop_count = self.length()
  character_location = 0
  word_value_array = []

  until character_location == (loop_count)
      if valid_letters.any? { |letter| indexed_word[character_location].include? letter}
  #  if indexed_word[character_location].any? { |(valid_letters)

    word_value = (words.fetch(indexed_word[character_location]))
    word_value_array.push(word_value)

    end

    character_location += 1

  end


  if (word_value_array.reduce(:+)).eql?(nil)

    return 0
  else
     return word_value_array.reduce(:+)
  end

  end
end
