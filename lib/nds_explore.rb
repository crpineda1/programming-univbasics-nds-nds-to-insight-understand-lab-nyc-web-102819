$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
# Call the method directors_database to retrieve the NDS

def pretty_print_nds(nds)
  # Change the code below to pretty print the nds with pp
  pp nds
end

p directors_database.count

p directors_database[0][:name]

p directors_database[0][:movies].count

p directors_database[0][:movies][0][:title]
p directors_database[0][:movies][1][:title]
p directors_database[0][:movies][2][:title]
p directors_database[0][:movies][3][:title]
p directors_database[0][:movies][4][:title]
p directors_database[0][:movies][5][:title]

def print_first_directors_movie_titles
  nds = directors_database
  row = 0
#  speilbergMovies = []

  while row < nds.count do
    if nds[row][:name] == "Stephen Spielberg"
      element = 0
      while element < nds[row][:movies].count do
#        speilbergMovies << nds[row][:movies][element][:title]
          p nds[row][:movies][element][:title]
        element += 1  
      end
    else
      
    end
    row += 1
  end
  p speilbergMovies
end
