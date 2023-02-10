# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# In your hashketball.rb file
def team_colors(team_name)
  teams = {
    "Brooklyn Nets" => ["Black", "White"],
    "Charlotte Hornets" => ["Turquoise", "Purple"]
  }
  teams[team_name]
end

def team_names
  teams = {
    "Brooklyn Nets" => ["Black", "White"],
    "Charlotte Hornets" => ["Turquoise", "Purple"]
  }
  teams.keys
end

def player_numbers(team_name)
  players = {
    "Brooklyn Nets" => [44, 42, 11, 34, 99],
    "Charlotte Hornets" => [33, 15, 50, 44, 3]
  }
  players[team_name]
end

def player_stats(player_name)
  stats = {
    "Jeff Adrien" => {
      number: 25,
      shoe: 17,
      points: 10,
      rebounds: 1,
      assists: 1,
      steals: 2,
      blocks: 7,
      slam_dunks: 2
    }
  }
  stats[player_name]
end

def big_shoe_rebounds
  stats = {
    "Jeff Adrien" => {
      number: 25,
      shoe: 17,
      points: 10,
      rebounds: 1,
      assists: 1,
      steals: 2,
      blocks: 7,
      slam_dunks: 2
    },
    "Bismack Biyombo" => {
      number: 0,
      shoe: 16,
      points: 12,
      rebounds: 11,
      assists: 1,
      steals: 7,
      blocks: 15,
      slam_dunks: 10
    }
  }

  largest_shoe = 0
  largest_shoe_rebounds = 0
  stats.each do |name, player_stats|
    if player_stats[:shoe] > largest_shoe
      largest_shoe = player_stats[:shoe]
      largest_shoe_rebounds = player_stats[:rebounds]
    end
  end
  largest_shoe_rebounds
end
def num_points_scored(player_name)
  players = [alan_anderson, reggie_evans, brook_lopez, mason_plumlee, jason_terry, jeff_adrien, bismack_biyombo, desagna_diop, ben_gordon, kemba_walker]
  player = players.find { |player| player[:player_name] == player_name }
  player[:points]
end

def shoe_size(player_name)
  players = [alan_anderson, reggie_evans, brook_lopez, mason_plumlee, jason_terry, jeff_adrien, bismack_biyombo, desagna_diop, ben_gordon, kemba_walker]
  player = players.find { |player| player[:player_name] == player_name }
  player[:shoe]
end
def player_numbers(team_name)
  numbers = []
  game_hash.each do |location, team_data|
    if team_data[:team_name] == team_name
      team_data[:players].each do |player|
        numbers << player[:number]
      end
    end
  end
  numbers
end

def player_stats(player_name)
  stats = {}
  game_hash.each do |location, team_data|
    team_data[:players].each do |player|
      if player[:player_name] == player_name
        stats = player
      end
    end
  end
  stats
end

def big_shoe_rebounds
  biggest_shoe = 0
  rebounds = 0
  game_hash.each do |location, team_data|
    team_data[:players].each do |player|
      if player[:shoe] > biggest_shoe
        biggest_shoe = player[:shoe]
        rebounds = player[:rebounds]
      end
    end
  end
  rebounds
end

