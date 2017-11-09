require 'httparty'

10.times do
  random_word = HTTParty.get('http://setgetgo.com/randomword/get.php')
  puts random_word
end
