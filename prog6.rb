class WrongNumberOfPlayersError< StandardError
end
class NoSuchStrategyError< StandardError
end

def rps_game_winner(array)
  hash = {"R" => 0,
           "S" => 1,
           "P" =>2}
  p1 , p2 , pc1, pc2 = array[0][0],array[1][0] , array[0][1],array[1][1]
  raise WrongNumberOfPlayersError if (array.size >2)||(array.size  <1)
  raise NoSuchStrategyError if [pc1,pc2].all? {|el| el == ~/[PRS]/}
  return p1 + ' ' + pc1 if ((hash[pc1] - hash[pc2]) % 3 == 2)
  p2 + ' ' + pc2
end

puts rps_game_winner([['player1','S'],['pla2','P']])


