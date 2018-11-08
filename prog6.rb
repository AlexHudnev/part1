class WrongNumberOfPlayersError< Exception
end
class NoSuchStrategyError< Exception
end


def rps_game_winner(array)
  if (array.size >2)||(array.size  <1)
    raise WrongNumberOfPlayersError
  elsif !((["P","S","R"].include? array[0][1] )&&["P","S","R"].include?(array[1][1] ))
    raise NoSuchStrategyError
  else
    if  (array[0][1] == array[1][1])
      return array[0][0].to_s + ' '<< array[0][1]
    elsif (array[0][1] == "S" && array[1][1] == "P")||(array[0][1] == "R" && array[1][1] == "S")||
      (array[0][1] == "P" && array[1][1] == "R")
      return array[0]
    elsif (array[1][1] == "S" && array[0][1] == "P")||(array[1][1] == "R" && array[0][1] == "S")||
      (array[1][1] == "P" && array[0][1] == "R")
      return array[1][0].to_s + ' ' << array[1][1]
    end
  end

  end


