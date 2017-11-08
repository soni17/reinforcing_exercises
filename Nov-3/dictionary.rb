class Dictionary

  def initialize
    @words = {}
  end

  def entries
    return @words
  end

  def keywords
    return @words.keys.sort
  end

  def add(word)

    if word.class == Hash
      @words.merge!(word)
    elsif word.class == String
      @words.merge!( {word => nil} )
    end

  end

  def include?(lookup)
    keywords.include?(lookup)
  end

  def find(lookup)
    @words.select { |k,v| k.start_with?(lookup) }
  end

end
