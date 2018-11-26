class Team

  attr_accessor :name, :players, :coach, :points

  def initialize(name, players, coach, points)
    @name = name
    @players = players
    @coach = coach
    @points = points
  end

  # def name()
  #   return @name
  # end

  # def players()
  #   return @players
  # end

  # def coach()
  #   return @coach
  # end

  # def set_coach(name)
  #   @coach = name
  # end

  def add_player(player_name)
    players.push(player_name)
  end

  def check_for_player(player_name)
    players.include?(player_name)
  end

  def team_result(result)
    if result == "Won"
      @points += 3
    end
  end

end
