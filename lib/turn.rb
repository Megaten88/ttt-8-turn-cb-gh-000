def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i
end

def valid_move?(board, index)
  if index.between?(0,8) && position_taken?(board,index) == false
    return true
  end
  return false
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == nil || board[index] == ""
    return false
  end
  return true
end
