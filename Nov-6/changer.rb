class Changer

  def self.make_change(cents)

    change = []

    while cents > 0

      if cents >= 25
        change << 25
        cents -= 25
      elsif cents >= 10
        change << 10
        cents -= 10
      elsif cents >= 5
        change << 5
        cents -= 5
      else
        change << 1
        cents -= 1
      end

    end

    return change

  end

end


#alternative way

# if cents >= 25
#   quarters = cents/25
#   cents = cents%25
#   quarters.times {
#     change << 25
#   }
# end
#
# if cents != 0
#   dimes = cents/10
#   cents = cents%10
#   dimes.times{
#     change << 10
#   }
# end
#
# if cents != 0
#   nickles = cents/5
#   cents = cents%5
#   nickles.times{
#     change << 5
#   }
# end
#
# if cents != 0
#   pennies = cents/1
#   cents = cents%1
#   pennies.times{
#     change << 1
#   }
# end
#
# return change.sort.reverse
