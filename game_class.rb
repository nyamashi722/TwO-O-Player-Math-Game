require './player_class'
require './question_class'

class Game
  attr_accessor :current_player, :game_status

  def initialize(player_1, player_2, question_generator)
    @players = [player_1, player_2]
    @question_generator = question_generator
    @lives_total = 3
  end

  def start
    current_player = 0

    while @players[0].lives > 0 && @players[1].lives > 0 do
      puts "#{@players[current_player].name}: #{@question_generator.generate}"
      answer = gets.chomp.to_i
      if (@question_generator.validate(answer))
        puts "#{@players[current_player].name}: You are correct!"
      else
        puts "#{@players[current_player].name}: You are wrong!"
        @players[current_player].lives -= 1
      end
      puts "P1: #{@players[0].lives}/#{@lives_total} vs P2: #{@players[1].lives}/#{@lives_total}"
      
      if (@players[current_player].lives > 0)
        puts "-----NEW TURN-----"
      end
      
    current_player += current_player > 0 ? -1 : 1
    end
    puts "#{@players[current_player].name} is the winner with a score of #{@players[current_player].lives}/#{@lives_total}"
    puts "-----GAME OVER-----"
    puts "Good bye!"
  end

end
