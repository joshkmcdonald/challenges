# Rock kills scissors and lizard
# paper kills spock and Rock
# scissors kill paper and lizard
# spock kills rock and scissors
# lizard kills paper and spock

# take input
# and randomly generate

# puts "You have entered the Fifth Dimension Intergalactic Space Summit. As you pass the Enterprise, you see your long time friend [Spock]. Next to him - in a cage - is a [lizard] sitting on a [rock]. Spock hands you a piece of [paper] wrapped around an object; scrawled upon this paper you read 'if compromised, use these [scissors] and destroy opponent'.

# --Two hours later--

# You have been challenged to fight to the eternal death, best two of three. You will be revived only once. Choose your weapon."

# def spock_paper_slizard
#  user_wins = 0
#  computer_wins = 0

#  until user_wins == 2 || computer_wins == 2 do
#    input = gets.chomp
#    random = ['rock', 'paper', 'scissors', 'spock', 'lizard'].sample

#    if input == random
#      p "it is a tie, you live for now"
#    else
#      case input
#      when 'rock'
#        if random == 'scissors' || random == 'lizard'
#          p "You use your rock to bash your opponent's brains out, because rock beats #{random}"
#          user_wins += 1
#        else
#          p "#{random} beats rock, you're dead, almost."
#          computer_wins += 1
#        end
#      when 'paper'
#        if random == 'spock' || random == 'rock'
#          p "With the sharp edges of your paper, you slit your opponent's juggular vein and they bleed out on the ground below. Everyone knows paper beats #{random}"
#          user_wins += 1
#        else
#          p "#{random} beats paper, you're dead."
#          computer_wins += 1
#        end
#      when 'scissors'
#        if random == 'paper' || random == 'lizard'
#          p "With Spock's gifted scissors, you stab your opponent directly in the left eye, immediately killing them. Scissors beats #{random}"
#          user_wins += 1
#        else
#          p "#{random} beats scissors, you're dead"
#          computer_wins += 1
#        end
#      when 'spock'
#        if random == 'rock' || random == 'scissors'
#          p "You call upon your champion Spock. With his Vulcan mind, he constructs a rudimentary lathe with the four other objects around him and cuts your opponent in half. Spock beats #{random}"
#          user_wins += 1
#        else
#          p "#{random} beats spock, so you're dead."
#          computer_wins += 1
#        end
#      when 'lizard'
#        if random == 'paper' || random == 'spock'
#          p "The un-caged lizard crawls on your opponent's chest and bites directly into his heart. They stumble over and turn into hardened stone, falling to the ground your opponent crumbles into a million tiny pieces. Lizard beats #{random}"
#          user_wins += 1
#        else
#          p "#{random} beats lizard, yikes man, you're dead."
#          computer_wins += 1
#        end
#      end
#    end
#  end

#  if user_wins == 2
#    "You have killed your enemy twice, they are eternally dead."
#  else
#    "You have been slain twice and disappear into eternal lifeless space."
#  end
# end

# p spock_paper_slizard

class Spock_paper_slizard

  def initialize
   @user_wins = 0
   @computer_wins = 0

   puts "You have entered the Fifth Dimension Intergalactic Space Summit. As you pass the Enterprise, you see your long time friend [Spock]. Next to him - in a cage - is a [lizard] sitting on a [rock]. Spock hands you a piece of [paper] wrapped around an object; scrawled upon this paper you read 'if compromised, use these [scissors] and destroy opponent'.

      --Two hours later--

    You have been challenged to fight to the eternal death, best two of three. You will be revived only once. Choose your weapon."
  end


  def get_input
    input = gets.chomp.downcase

    if input == 'rock' || input == 'paper' || input == 'scissors' || input == 'spock' || input == 'lizard'
      input
    else
      puts "Write rock, paper, scissors, spock or lizard!"
      get_input
    end
  end
  

  def battle

    until @user_wins == 2 || @computer_wins == 2 do
      
      input = get_input
      random = ['rock', 'paper', 'scissors', 'spock', 'lizard'].sample

      if input == random
        p "it is a tie, you live for now"
      else
        case input
        when 'rock'
          if random == 'scissors' || random == 'lizard'
            p "You use your rock to bash your opponent's brains out, because rock beats #{random}"
            @user_wins += 1
          else
            p "#{random} beats rock, you're dead, almost."
            @computer_wins += 1
          end
        when 'paper'
          if random == 'spock' || random == 'rock'
            p "With the sharp edges of your paper, you slit your opponent's juggular vein and they bleed out on the ground below. Everyone knows paper beats #{random}"
            @user_wins += 1
          else
            p "#{random} beats paper, you're dead."
            @computer_wins += 1
          end
        when 'scissors'
          if random == 'paper' || random == 'lizard'
            p "With Spock's gifted scissors, you stab your opponent directly in the left eye, immediately killing them. Scissors beats #{random}"
            @user_wins += 1
          else
            p "#{random} beats scissors, you're dead"
            @computer_wins += 1
          end
        when 'spock'
          if random == 'rock' || random == 'scissors'
            p "You call upon your champion Spock. With his Vulcan mind, he constructs a rudimentary lathe with the four other objects around him and cuts your opponent in half. Spock beats #{random}"
            @user_wins += 1
          else
            p "#{random} beats spock, so you're dead."
            @computer_wins += 1
          end
        when 'lizard'
          if random == 'paper' || random == 'spock'
            p "The un-caged lizard crawls on your opponent's chest and bites directly into his heart. They stumble over and turn into hardened stone, falling to the ground your opponent crumbles into a million tiny pieces. Lizard beats #{random}"
            @user_wins += 1
          else
            p "#{random} beats lizard, yikes man, you're dead."
            @computer_wins += 1
          end
        end
      end

      if @user_wins == 2
        "You have killed your enemy twice, they are eternally dead."
      else
        "You have been slain twice and disappear into eternal lifeless space."
      end

    end
  end
end

game = Spock_paper_slizard.new
game.battle




