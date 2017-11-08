class Temperature

  def initialize(temp)
    @temp = temp
  end

  def to_celsius()

    if @temp[:f]
      return ( @temp[:f] -32 ) * 5 / 9
    elsif @temp[:c]
      return @temp[:c]
    else
      return "Please enter temperature in farenheit."
    end

  end

  def to_fahrenheit()

    if @temp[:c]
      return (@temp[:c] * 9 / 5 ) + 32
    elsif @temp[:f]
      return @temp[:f]
    else
      return "Please enter temperature in celsius"
    end

  end

end
