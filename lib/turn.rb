def display_board(board)
  
  separator = "-"*11
  board.each_with_index do |position,i|
    if (2==i%3) #end of line
      puts " #{position} "
      puts separator
    else
      print " #{position} |"
    end
    
  end
  
end


def input_to_index(my_string)
  
    return ((my_string.to_i) -1) #to_i = 0, when string is not number
  
end

def valid_move?(board,index)
  my_move=board[index]
  return (my_move==nil || index < 0) ? false : (my_move.strip=="")
  
end


def move(board,index,character)
  if valid_move?(board,index) 
    board[index]=character
  end
end


def turn(board)
  puts("Please enter 1-9:")
  my_turn=gets.chomp
  idx=input_to_index(my_turn)
  if valid_move?(board,idx)
    move(board,idx,"X")
    display_board(board)
  else
    turn(board)
  end
end