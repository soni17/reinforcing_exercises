def echo(arg)
  return arg
end

def shout(arg)
  return arg.upcase
end

def repeat(word,loop)
  newString = ""
  loop.times{
    newString += word+" "
  }
  return newString.chop
end

def start_of_word(word,length)
  word[0,length]
end

def first_word(word)
  word.split[0]
end
