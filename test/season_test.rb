require 'minitest/autorun'
require 'minitest/pride'
require './lib/season'

class SeasonTest < Minitest::Test

  def setup
    Game.from_csv('./data/games_dummy.csv')
    @game = Game.all[0]

    Team.from_csv('./data/teams.csv')
    @team = Team.all[0]

    Season.from_csv('./data/game_teams_dummy.csv')
    @season = Season.all[0]
  end

  def test_it_exists
    assert_instance_of Season, @season
  end

  def test_it_can_determine_total_home_games_played_by_team_id
    skip
    expected = {6=>4, 12=>1, 10=>3, 21=>3, 53=>2, 1=>4, 24=>1, 4=>3, 23=>1,
                  17=>1, 14=>1, 2=>5, 28=>1, 5=>2, 9=>2, 25=>1, 18=>2, 22=>1,
                  20=>1, 13=>2}

    assert_equal expected, Season.total_home_games_played
  end

  def test_it_can_determine_total_away_games_played_by_team_id
    skip
    expected = ({3=>2, 23=>2, 5=>2, 19=>2, 28=>3, 25=>1, 2=>1, 10=>3, 6=>1,
                  13=>4, 22=>2, 30=>1, 7=>2, 1=>1, 9=>2, 4=>2, 52=>2, 20=>1,
                  29=>2, 17=>2, 27=>1})

    assert_equal expected, Season.total_away_games_played
  end

  def test_it_can_find_total_home_wins
    skip
    expected = {6=>4, 12=>1, 10=>2, 53=>1, 23=>1, 17=>1, 2=>3, 28=>1, 5=>1,
                  21=>1, 9=>1, 25=>1, 1=>2, 13=>2}

    assert_equal expected, Season.total_home_wins_by_team
  end

  def test_it_can_find_total_away_wins
    skip
    expected = {5=>2, 28=>3, 25=>1, 23=>1, 2=>1, 7=>2, 17=>1, 10=>1, 29=>1}

    assert_equal expected, Season.total_away_wins_by_team
  end

  def test_it_can_determine_home_win_percentages
    skip
    expected = {6=>100.0, 12=>100.0, 23=>100.0, 10=>66.67, 5=>50.0, 21=>33.33,
                  53=>50.0, 28=>100.0, 1=>50.0, 25=>100.0, 2=>60.0, 13=>100.0,
                  17=>100.0, 9=>50.0}

    assert_equal expected, Season.home_win_percentages
  end

  def test_it_can_determine_away_win_percentages
    skip
    expected = {23=>50.0, 10=>33.33, 5=>100.0, 28=>100.0, 25=>100.0, 2=>100.0,
                  17=>50.0, 7=>100.0, 29=>50.0}

    assert_equal expected, Season.away_win_percentages
  end

  def test_it_can_determine_winningest_team_across_all_seasons
    skip
    assert_equal "FC Dallas", Season.winningest_team
  end

  def test_it_can_determine_best_fans
    skip
    assert_equal "LA Galaxy", Season.best_fans
  end

  def test_it_can_determine_worst_fans
    skip
    assert_equal ["Sporting Kansas City", "Seattle Sounders FC"], Season.worst_fans
  end

  def test_it_can_find_team_record_by_season
    assert_equal ({"20122013"=>[1, 1], "20172018"=>[0], "20132014"=>[1, 1]}),
      Season.team_record("6")
  end

  def test_it_can_find_win_percentage_by_season
    hash = {"20122013"=>[1, 1], "20172018"=>[0], "20132014"=>[1, 1]}
    assert_equal ({"20122013"=>1.0, "20172018"=>0.0, "20132014"=>1.0}),
      Season.win_percentage_by_season(hash)
  end

  def test_it_can_find_best_season
    assert_equal ("20122013"), Season.best_season("6")
  end

  def test_it_can_find_best_season
    assert_equal ("20172018"), Season.worst_season("6")
  end

  def test_it_can_find_average_win_percentage
    assert_equal (0.8), Season.average_win_percentage("6")
  end
end
