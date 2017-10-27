
ballots = [
           {1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'},
           {1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger'},
           {1 => 'Bella', 2 => 'Boots', 3 => 'Smudge'},
           {1 =>'Boots', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Lucky', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Smudge', 2 => 'Simba', 3 => 'Felix'}
          ]

candidates = {
    "Smudge" => 0,
    "Tigger" => 0,
    "Simba" => 0,
    "Bella" => 0,
    "Lucky" => 0,
    "Boots" => 0,
    "Felix" => 0
}

def calc_points(rank)
  if rank == 1
    return 3
  elsif rank == 2
    return 2
  elsif rank == 3
    return 1
  else
    return false
  end
end


ballots.each { |ballot|
  ballot.each { |key,val|
    candidates[val] += calc_points(key)
  }
}

require 'pp'

puts "--------Candidate votes not sorted--------------"
pp candidates
puts "-----Candidates votes sorted--------"
candidates_sorted = candidates.sort_by{|candidate,votes| -votes }
pp candidates_sorted
puts " "
puts "The winner is #{candidates_sorted[0][0]} with #{candidates_sorted[0][1]} votes"
