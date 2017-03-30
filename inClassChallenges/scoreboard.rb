# Build a Ruby class that works like a scoreboard for a 9 inning game. This means that the class should start a game where every inning has 0 runs and as the game goes on, runs can be added to runs, which also changes the total.

class Scoreboard

  attr_accessor :scores, :team_name
  def initialize(team_name)
    @team_name = team_name
    @scores = {team_name=>{1=>0, 2=>0, 3=>0, 4=>0, 5=>0, 6=>0, 7=>0, 8=>0, 9=>0}}
  end

  def add_run(inning)
    @scores[team_name][inning] += 1
  end

  def generate_total
    total = 0
    @scores[team_name].each { |x,y| total += y}
    total
  end

end

team = Scoreboard.new('Astros')
team.add_run(1)
team.add_run(1)
team.add_run(3)
team.add_run(7)
team.add_run(9)
puts team.generate_total
puts team.scores
