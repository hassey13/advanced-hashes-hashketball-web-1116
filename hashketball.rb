# Write your code here!
require 'pry'

def game_hash
        game_hash = {
            home: {
                team_name: "Brooklyn Nets",
                colors: ["Black","White"],
                players: {
                    "Alan Anderson" => {
                        number: 0,
                        shoe: 16,
                        points: 22,
                        rebounds: 12,
                        assists: 12,
                        steals: 3,
                        blocks: 1,
                        slam_dunks: 1
                    },
                    "Reggie Evans" => {
                        number: 30,
                        shoe: 14,
                        points: 12,
                        rebounds: 12,
                        assists: 12,
                        steals: 12,
                        blocks: 12,
                        slam_dunks: 7
                    },
                    "Brook Lopez" => {
                        number:  11,
                        shoe: 17,
                        points: 17,
                        rebounds: 19,
                        assists: 10,
                        steals: 3,
                        blocks: 1,
                        slam_dunks: 15
                    },
                    "Mason Plumlee" => {
                        number: 1,
                        shoe: 19,
                        points: 26,
                        rebounds: 12,
                        assists: 6,
                        steals: 3,
                        blocks: 8,
                        slam_dunks: 5
                    },
                    "Jason Terry" => {
                        number: 31,
                        shoe: 15,
                        points: 19,
                        rebounds: 2,
                        assists: 2,
                        steals: 4,
                        blocks: 11,
                        slam_dunks: 1
                    }
                }
            },
            away: {
                team_name: "Charlotte Hornets",
                colors: ["Turquoise","Purple"],
                players: {
                    "Jeff Adrien" => {
                        number: 4,
                        shoe: 18,
                        points: 10,
                        rebounds: 1,
                        assists: 1,
                        steals: 2,
                        blocks: 7,
                        slam_dunks: 2
                    },
                    "Bismak Biyombo" => {
                        number: 0,
                        shoe: 16,
                        points: 12,
                        rebounds: 4,
                        assists: 7,
                        steals: 7,
                        blocks: 15,
                        slam_dunks: 10
                    },
                    "DeSagna Diop" => {
                        number: 2,
                        shoe: 14,
                        points: 24,
                        rebounds: 12,
                        assists: 12,
                        steals: 4,
                        blocks: 5,
                        slam_dunks: 5
                    },
                    "Ben Gordon" => {
                        number: 8,
                        shoe: 15,
                        points: 33,
                        rebounds: 3,
                        assists: 2,
                        steals: 1,
                        blocks: 1,
                        slam_dunks: 0
                    },
                    "Brendan Haywood" => {
                        number: 33,
                        shoe: 15,
                        points: 6,
                        rebounds: 12,
                        assists: 12,
                        steals: 22,
                        blocks: 5,
                        slam_dunks: 12
                    }
                }
            }
        }
end


def good_practices(game_hash)
        game_hash.each do |location, team_data|
                team_data.each do |attribute, data|
                        if attribute == :players
                                data.each do |player_name, player_data|
                                        if player_name == player_select
                                                player_data.each do |stat, value|
                                                        if stat == :points
                                                                return value
                                                        end
                                                end
                                        end
                                end
                        end
                end
        end
end

#num_points_scored knows the number of points scored by each player

def num_points_scored(player_select)
        game_hash.each do |location, team_data|
                team_data.each do |attribute, data|
                        if attribute == :players
                                data.each do |player_name, player_data|
                                        if player_name == player_select
                                                player_data.each do |stat, value|
                                                        if stat == :points
                                                                return value
                                                        end
                                                end
                                        end
                                end
                        end
                end
        end
end


#shoe_size knows the shoe size of each player

def shoe_size(player_select)
        game_hash.each do |location, team_data|
                team_data.each do |attribute, data|
                        if attribute == :players
                                data.each do |player_name, player_data|
                                        if player_name == player_select
                                                player_data.each do |stat, value|
                                                        if stat == :shoe
                                                                return value
                                                        end
                                                end
                                        end
                                end
                        end
                end
        end
end


#team_colors knows the Brooklyn Nets colors are Black and White

def team_colors(team)
        game_hash.each do |location, team_data|
            if team_data.values.include?(team)
                team_data.each do |attribute, data|
                  if attribute == :colors
                    return data
                  end
                end
            end
        end
end


#team_names returns the team names

def team_names
        array = []
        game_hash.each do |location, team_data|
                team_data.each do |attribute, data|
                  if attribute == :team_name
                    array << data
                  end
                end
        end
        return array
end


#player_numbers returns the player jersey numbers  by team.sort

def player_numbers(team)
        array = []
        game_hash.each do |location, team_data|
                if team_data.values.include?(team)
                        team_data.each do |attribute, data|
                                if attribute == :players
                                        data.each do |player_name, player_data|
                                                player_data.each do |stat, value|
                                                        if stat == :number
                                                                array << value
                                                        end
                                                end
                                        end
                                end
                        end
                end
        end
        return array.sort
end


#player_stats returns all stats for a given player

def player_stats(player_select)
        game_hash.each do |location, team_data|
                team_data.each do |attribute, data|
                        if attribute == :players
                                data.each do |player_name, player_data|
                                        if player_name == player_select
                                                return player_data
                                        end
                                end
                        end
                end
        end
end

#big_shoe_rebounds returns the number of rebounds of the player with the biggest shoe size

def big_shoe_rebounds
        shoe = []
        boards = []
        game_hash.each do |location, team_data|
                team_data.each do |attribute, data|
                        if attribute == :players
                                data.each do |player_name, player_data|
                                        player_data.each do |stat, value|
                                                if stat == :shoe
                                                        shoe << value
                                                end
                                                if stat == :rebounds
                                                        boards << value
                                                end
                                        end
                                end
                        end
                end
        end
        index_of_biggest_shoe = 0
        shoe.each_with_index do |el,i|
                if el > index_of_biggest_shoe
                        index_of_biggest_shoe = i
                end
        end
        return boards[index_of_biggest_shoe]
end
