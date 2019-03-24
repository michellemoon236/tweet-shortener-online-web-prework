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
  array = string.split.map do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end
  array.join(" ")
end
    
def bulk_tweet_shortener (array)
  array.map do |string|
  puts word_substituter (string)
end
end

def selective_tweet_shortener (string)
  if string.length > 140
     word_substituter (string)
  else
    string
  end
end

def shortened_tweet_truncator (string)
  if word_substituter(string).length > 140
    word_substituter(string)[0...137]+("...")
  else
     word_substituter(string)
  end
end
