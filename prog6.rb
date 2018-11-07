class Z < StandardError
end


def rps_game_winner(array)
  if (array.size >2)||(array.size  <1)
    raise Z.new "WrongNumberOfPlayersError"
  elsif !((["P","S","R"].include? array[0][1] )&&["P","S","R"].include?(array[1][1] ))
    raise Z.new "NoSuchStrategyError"
  else
    if  (array[0][1] == array[1][1])
      return array[0]
    elsif (array[0][1] == "S" && array[1][1] == "P")||(array[0][1] == "R" && array[1][1] == "S")||
      (array[0][1] == "P" && array[1][1] == "R")
      return array[0]
    elsif (array[1][1] == "S" && array[0][1] == "P")||(array[1][1] == "R" && array[0][1] == "S")||
      (array[1][1] == "P" && array[0][1] == "R")
      return array[1]
    end
  end

  end

#puts rps_game_winner([["Plauer1",])
puts rps_game_winner([%w[player1 P], %w[player2 P]])
