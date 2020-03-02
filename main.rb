# require "./Players"

class Players
  
  attr_accessor :lives, :id
  @@numPlayers = 0
  
  def initialize
    @id = @@numPlayers + 1
    @lives = 3
    @@numPlayers += 1
  end

  def lose_life
    self.lives -= 1
  end
  
end

def create_numbers
  a = rand(20)
  b = rand(20)
  answer = a + b
  numArr = [a,b,answer]
  numArr
end

def ask_question(currPlayer, created_numbers)
  puts "Player #{currPlayer.id}: What does #{created_numbers[0]} + #{created_numbers[1]} equal?"
  response = gets.chomp
  puts
  return [response, created_numbers[2]]
end

def check_answer(response)
  if response[0] == response[1].to_s
    return true
  else
    return false
  end
end

def respond_to_input(currPlayer, checkedAnswer)
  if checkedAnswer == true
    puts "Player #{currPlayer.id}: Correct!"
  else 
    puts "Player #{currPlayer.id}: Unfortunately, that's not right."
    currPlayer.lose_life
  end
end

def output_score(player_1, player_2)
  puts "P1: #{player_1.lives}/3 vs. P2: #{player_2.lives}/3"
  puts
end

def check_lives(player_1, player_2)
  if player_1.lives === 0 || player_2.lives === 0
    return false
  else
    return true
  end
end
  
#------------------------------------------------------------

def game

  puts "New game!"

  player_1 = Players.new
  player_2 = Players.new

  currPlayer = player_1

  while check_lives(player_1, player_2)
    createdNumbers = create_numbers()
    response = ask_question(currPlayer, createdNumbers)
    checkedAnswer = check_answer(response)
    respond_to_input(currPlayer, checkedAnswer)
    output_score(player_1, player_2)

    if currPlayer == player_1
      currPlayer = player_2
    else
      currPlayer = player_1
    end

  end

  if player_1.lives > 0
    puts "Player 1 wins with a score of #{player_1.lives}"
  else
    puts "Player 2 wins with a score of #{player_2.lives}"
  end

end

game()

  
