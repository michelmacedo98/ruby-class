  puts "How many points is your test worth?"
    testPoints = gets.to_f #takes user input for testPoints
  puts "How many total points are in your class grade?"
    totalPoints = gets.to_f #takes user input for totalPoints
    testGrade = (testPoints/totalPoints)*100 #calculates what percent of the total grade the test is worth

  puts "This test will be worth #{testGrade}% of your class grade."
  puts "What is your grade percent in the class?"
    classGradePercentage = gets.to_f #takes user input for classGradePercentage


  totalPointsPlusTest = totalPoints+testPoints #determines how many total points are in the class after the test is taken into consideration
  classGrade=(classGradePercentage/100)*totalPoints #converts classGradePercentage into a number out of the total number of points before the test
  puts "What grade do you want in the class?"
    idealGradePercentage = gets.to_f#takes user input for idealGradePercentage
    idealGrade = (idealGradePercentage/100)*totalPointsPlusTest #determines what the ideal grade percentage is as a number out of the total points after the test
    requiredTestScore = ((idealGrade-classGrade)/(totalPointsPlusTest-totalPoints))*100 #figures out how many points are needed on the test to meet the ideal grade goal in the class. i.e. assuming the test was worth 100 and there were 500 total points available in the class taking the test points into consideration, and the student had a 87% before the test and wants a 90% atfer it... ((450-348=102)/500-400=100))*100=102 which would be impossible
  puts "To get a #{idealGradePercentage}% in the class you will need  a #{requiredTestScore}% on the test."
  if requiredTestScore>100 #if the score is over 100 percent tells user it is impossible to achieve what they want
    puts "It is impossible to achieve your desired grade."
  end
