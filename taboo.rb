$wordsToGuess=[["Car"],["Computer"],["Water Bottle"],["Table"],["Chair"]]
$tabooWords=[["Road","Wheels","Highway","Steering Wheel","Drive"],["Keyboard","Work","Device","Screen","Track Pad"],["Drink","Container","Hydration","Liquid","Thirst"],["Eat","Dinner","Food","Work","Lunch"],["Sit","School","Legs","Butt","Rest"]]
$teamOneScore=0
$teamTwoScore=0
class Taboo
  def initialize(teamOne="Team 1",teamTwo="Team 2")
    @@teamOne=teamOne
    @@teamTwo=teamTwo
    puts "The team to earn 5 points in the shortest amount of time wins. Make sure to time your team's turn!"
  end
def gameBegin
  until $teamOneScore==5
  a=rand($wordsToGuess.length)
  b=$wordsToGuess[a]
  c=$tabooWords[a]
  puts "#{@@teamOne}, your word to describe is: #{b}. The taboo words for this word are #{c}"
  puts "If your team guesses correctly hit 'Enter'; if your team guessed incorrectly more than 10 times or a taboo word was said press 'x'."
  enter=gets.chomp

  if enter==""
    $teamOneScore+=1
    puts "Congradulations! You guessed correctly. Your team now has #{$teamOneScore} points."
  elsif enter=="x"
    $teamOneScore-=1
    puts "You said a taboo or guessed wrongly 10 times. Your team now has #{$teamOneScore} points."
  else
    puts "Not a key"
  end
end
puts "Team 1, your turn is over. It is now Team 2's turn!"
  until $teamTwoScore==5
    a=rand($wordsToGuess.length)
    b=$wordsToGuess[a]
    c=$tabooWords[a]
    puts "#{@@teamTwo}, your word to describe is: #{b}. The taboo words for this word are #{c}"
    puts "If your team guesses correctly hit 'Enter'; if your team guessed incorrectly more than 10 times or a taboo word was said press 'x'."
    enter=gets.chomp

      if enter==""
        $teamTwoScore+=1
        puts "Congradulations! You guessed correctly. Your team now has #{$teamTwoScore} points."
      elsif enter=="x"
          $teamTwoScore-=1
        puts "You said a taboo or guessed wrongly 10 times. Your team now has #{$teamTwoScore} points."
      else
        puts "Not a key"
      end
    end
  puts "The game is over, whoever got 5 fastest first wins."
end
end

michel=Taboo.new
michel.gameBegin
