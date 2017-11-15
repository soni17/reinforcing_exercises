require 'minitest/autorun'
require 'minitest/pride'
require './team.rb'

class TestTeam < MiniTest::Test

  def test_to_hash_method_returns_hash
    newTeam = Team.new("Maple Leafs",5,['john','steve','jimmy'])
    expected = Hash;
    result = newTeam.to_hash.class;
    assert_equal(expected,result)
  end

  def test_passing_arguments
    newTeam = Team.new( "Maple Leafs" , 5 , ['john','steve','jimmy'] )
    expected = { team_name: "Maple Leafs" , level: 5 , points: 0 }
    result = newTeam.to_hash
    assert_equal(expected,result)
  end



end
