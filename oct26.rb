words = ["Totam", "ut", "odit","quis", "Maiores", "unde", "EX", "EST", "corporis"]


words.each do |word|

  if word == word.downcase && word.length > 4
    puts "long and lowercase"
  elsif word == word.downcase
    puts "lowercase"
  elsif word.length > 4
    puts "long"
  else
    puts word
  end

end
