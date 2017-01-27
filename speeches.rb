
text=File.read("melania.txt")
words = text.split(" ")
frequencies = Hash.new(0)
words.each { |word|
  freeword=word.gsub(/\W/,'')#this takes out punctuation
  newWord=freeword.downcase#this makes everything lowercase
  frequencies[newWord] += 1}
frequencies = frequencies.sort_by {|a, b| b}
frequencies.reverse!
frequencies.each {|word,frequencies| puts word + " " + frequencies.to_s}
