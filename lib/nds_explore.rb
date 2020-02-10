$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
# Call the method directors_database to retrieve the NDS
directors_database

def pretty_print_nds(nds)
  # Change the code below to pretty print the nds with pp
  pp nds
  nil
end

def print_first_directors_movie_titles
  outer_index = 0
  while outer_index < directors_database.length do
    inner_index = 0
    while inner_index < directors_database[outer_index][:movies].length do
      if directors_database[outer_index][:name] == "Stephen Spielberg"
        puts "#{directors_database[outer_index][:movies][inner_index][:title]}\n"
      end
      inner_index += 1
    end
  outer_index += 1
  end
end
