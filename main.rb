require './player_class'
require './question_class'
require './game_class'


player_1 = Player.new("Player 1")

player_2 = Player.new("Player 2")

question_generator = Question.new

game = Game.new(player_1, player_2, question_generator)
game.start

