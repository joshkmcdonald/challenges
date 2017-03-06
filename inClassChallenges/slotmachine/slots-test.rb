class Slots


  def initialize
    @number_of_rolls = 0
    @total_points = 100
  end

  def start_game
    puts "Welcome to a new game of FruitSlots!"
    puts "You've started the game with 100 free coins"
    puts "Would you like to begin? (y/n)"
    input = gets.chomp

    if input == 'y'
      pull_lever
    elsif input == 'n'
      puts "Exiting game"
    else
      puts "That wasn't y or n, so we are exiting the game anyway!!!!"
    end
  end

  def pull_lever
    bet = place_bet
    roll = reel_spin
    @number_of_rolls += 1
    points(roll, bet)
  end

  def reel_spin
    reel = ["🍊","🍇","🍏","🍋","🍎","🌔","🌗","🌒"]
    roll = []

    3.times do
      roll << reel.sample
    end

    puts "$$$$$$$$$$$$$$$$$$"
    puts "This is your roll:"
    p roll.join("  ")
  
    roll
  end


  def place_bet
    puts "How many coins would you like to bet? 1,2 or 3"
    bet = [1,2,3].sample

    if bet == 1 || bet ==2 || bet == 3
      if (@total_points - bet) < 0
        puts "You don't have enough money to place a bet of #{bet} coins."
        puts "Please place a smaller bet"
        place_bet
      else
        @total_points -= bet
        bet
      end
    else
      puts "______________________________________________________"
      puts "You did not type 1,2 or 3. Please provide a valid bet."
      place_bet
    end
  end

  def points_helper(bet, points_1, points_2, points_3)
    if bet == 1
      @total_points += points_1
      puts "You won #{points_1} coins!"
    elsif bet == 2
      @total_points += points_2
      puts "You won #{points_2} coins!"
    else
      @total_points += points_3
      puts "You won #{points_3} coins!"
    end
  end

  def points(roll, bet)

    case roll
    when ["🍊","🍊","🍊"]
    points_helper(bet, 600, 1200, 2500)

    when ["🍇","🍇","🍇"]
    points_helper(bet, 80, 160, 240)
      
    when ["🍏","🍏","🍏"]
    points_helper(bet, 100, 200, 300)

    when ["🍎","🍎","🍎"]
    points_helper(bet, 40, 80, 120)

    when ["🍋","🍋","🍋"]
    points_helper(bet, 120, 240, 360)

    when ["🌔","🌔","🌔"]
    points_helper(bet, 60, 120, 180)

    when ["🌗","🌗","🌗"]
    points_helper(bet, 30, 60, 90)

    when ["🌒","🌒","🌒"]
    points_helper(bet, 20, 40, 60)

    when roll.include?("🍏") && roll.include?("🍎") && roll.include?("🍋")
    points_helper(bet, 400, 800, 1200)
    
    else
      @total_points += 0
      puts "You did not win any coins on this spin"
    end

    display_total_points
    pull_lever_again

  end

  def display_total_points
    puts "and you have #{@total_points} coins."
    puts "$$$$$$$$$$$$$$$$$$"
  end

  def pull_lever_again
    if @total_points == 0
      puts "Sorry! You cannot roll again because you're out of money."
      puts "You ended the game with #{@total_points} coins"
      puts "It took #{@number_of_rolls} rolls to run out of money"
    else
      pull_lever
    end
  end

end



Slots.new.start_game

