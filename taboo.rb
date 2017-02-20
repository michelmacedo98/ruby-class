$wordsToGuess=[["Car"],["Computer"],["Water Bottle"],["Table"],["Chair"]]#this array stores all the posssible words that will be randomized as the word a team has to guess
$tabooWords=[["Road","Wheels","Highway","Steering Wheel","Drive"],["Keyboard","Work","Device","Screen","Track Pad"],["Drink","Container","Hydration","Liquid","Thirst"],["Eat","Dinner","Food","Work","Lunch"],["Sit","School","Legs","Butt","Rest"]]#this array stores all the taboo words that correlate exactly with the word to guess array it coreesponds to. i.e. $tabooWords[0] corresponds with $wordsToGuess[0]
$teamOneScore=0#variable that will keep track of teamOneScore
$teamTwoScore=0#variable that will keep track of teamTwoScore
class Taboo#creates class
  def initialize(teamOne="Team 1",teamTwo="Team 2")#creates basic structure of class
    @@teamOne=teamOne#sets teamOne name
    @@teamTwo=teamTwo#sets teamTwo name
    puts "The team to earn 5 points in the shortest amount of time wins. Make sure to time your team's turn!"
  end
def gameBegin#method that actually runs the game
  until $teamOneScore==5#runs the loop until teamOneScore=5
  a=rand($wordsToGuess.length)#randomizes the wordsToGuess
  b=$wordsToGuess[a]#stores the random wordsToGuess into this variable: b
  c=$tabooWords[a]#stores the randomized wordsToGuess array value (i.e. wordsToGuess[3]) as the corresponding tabooWords array value (tabooWords[3]) as c
  puts "#{@@teamOne}, your word to describe is: #{b}. The taboo words for this word are #{c}" #tells team what word to guess and what the taboo words are for that word
  puts "If your team guesses correctly hit 'Enter'; if your team guessed incorrectly more than 10 times or a taboo word was said press 'x'." #tells the team what to do
  enter=gets.chomp #takes the user input of either 'enter' or 'x'

  if enter=="" #if user input = 'enter' this conditional runs
    $teamOneScore+=1#adds 1 to teamOneScore
    puts "Congradulations! You guessed correctly. Your team now has #{$teamOneScore} points." #prints teamOneScore
  elsif enter=="x" #if user input = 'x' this conditional runs
    $teamOneScore-=1 #subtracts 1 from teamOneScore
    puts "You said a taboo or guessed wrongly 10 times. Your team now has #{$teamOneScore} points." #prints teamOneScore
  else #if user input isnt specified key runs this conditional
    puts "Not a key"
  end#ends if statement
end#ends until loop
puts "Team 1, your turn is over. It is now Team 2's turn!"
  until $teamTwoScore==5 #new until loop that does the exact same thing as the teamone loop but for teamtwo
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

michel=Taboo.new#initializes class
michel.gameBegin#initializes game function
