require_relative './game'
require_relative './season'
require_relative './team'

class StatTracker

  attr_reader :game_teams, :games, :teams

  def self.from_csv(locations)
    game_teams_path = locations[:game_teams]
    game_path = locations[:games]
    teams_path = locations[:teams]

    StatTracker.new(game_teams_path, game_path, teams_path)
  end

  def initialize(game_teams_path, game_path, teams_path)
    @game_teams = Season.from_csv(game_teams_path)
    @teams = Team.from_csv(teams_path)
    @games = Game.from_csv(game_path)
  end

  def highest_total_score
    Game.highest_total_score
  end

  def lowest_total_score
    Game.lowest_total_score
  end

  def biggest_blowout
    Game.biggest_blowout
  end

  def percentage_home_wins
    Game.percentage_home_wins
  end

  def percentage_visitor_wins
    Game.percentage_visitor_wins
  end

  def percentage_ties
    Game.percentage_ties
  end

  def count_of_games_by_season
    Game.count_of_games_by_season
  end

  def average_goals_per_game
    Game.average_goals_per_game
  end

  def average_goals_by_season
    Game.average_goals_by_season
  end

  def count_of_teams
    Game.count_of_teams
  end

  def best_offense
    Game.best_offense
  end

  def worst_offense
    Game.worst_offense
  end

  def best_defense
    Game.best_defense
  end

  def worst_defense
    Game.worst_defense
  end

  def highest_scoring_visitor
    Game.highest_scoring_visitor
  end

  def highest_scoring_home_team
    Game.highest_scoring_home_team
  end

  def lowest_scoring_visitor
    Game.lowest_scoring_visitor
  end

  def lowest_scoring_home_team
    Game.lowest_scoring_home_team
  end

  def winningest_team
    Season.winningest_team
  end

  def best_fans
    Season.best_fans
  end

  def worst_fans
    Season.worst_fans
  end

  def biggest_bust(season)
    Season.biggest_bust(season)
  end

  def winningest_coach(season_id)
    Season.winningest_coach(season_id)
  end

  def worst_coach(season_id)
    Season.worst_coach(season_id)
  end

  def most_accurate_team(season_id)
    Season.most_accurate_team(season_id)
  end

  def least_accurate_team(season_id)
    Season.least_accurate_team(season_id)
  end

  def most_tackles(season)
    Season.most_tackles(season)
  end

  def fewest_tackles(season)
    Season.fewest_tackles(season)
  end

  def team_info(id)
    Team.team_info(id)
  end

  def best_season(id)
    Season.best_season(id)
  end

  def worst_season(id)
    Season.worst_season(id)
  end

  def average_win_percentage(int)
    Season.average_win_percentage(int)
  end

  def most_goals_scored(int)
    Season.most_goals_scored(int)
  end

  def fewest_goals_scored(int)
    Season.fewest_goals_scored(int)
  end

  def favorite_opponent(team_id)
    Season.favorite_opponent(team_id)
  end

  def biggest_team_blowout(team_id)
    Season.biggest_team_blowout(team_id)
  end

  def worst_loss(team_id)
    Season.worst_loss(team_id)
  end

  def most_accurate_team(season_id)
    Season.most_accurate_team(season_id)
  end

  def least_accurate_team(season_id)
    Season.least_accurate_team(season_id)
  end

  def team_info(teamid)
    Team.team_info(teamid)
  end
end
