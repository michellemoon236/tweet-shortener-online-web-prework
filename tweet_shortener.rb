def dictionary 
  dictionary = {
  "hello" => 'hi',
"to" => '2', 
"two" => '2',
"too" => '2',
"for" => '4',
"four" => '4',
'be' => 'b',
'you' => 'u',
"at" => "@", 
"and" => "&"
}
end

def word_substituter (string)
  array = string.split
  
  array.map do |word|
    if word.include?(dictionary)
      word = dictionary[word]
    else
      word
    end
  end
  array.join(" ")
end
    