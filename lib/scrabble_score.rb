class String
  define_method(:scrabble_score) do
    words =
    {" "=>0,"a"=>1,"e"=>1,"i"=>1,"o"=>1,"u"=>1,"l"=>1,"n"=>1,"r"=>1,"s"=>1,"t"=>1,"d"=>2,"g"=>2,"b"=>3,"c"=>3,"m"=>3,"p"=>3,
    "f"=>4,"h"=>4,"v"=>4,"w"=>4,"y"=>4,"k"=>5,"j"=>8,"x"=>8,"q"=>10,"z"=>10}

  indexed_word = self.downcase().split(//)
  loop_count = self.length()
  character_location = 0
  word_value_array = []

  until character_location == (loop_count)
    word_value = (words.fetch(indexed_word[character_location]))
    character_location += 1
    word_value_array.push(word_value)
  end


  return (word_value_array).reduce(:+)

  end
end
