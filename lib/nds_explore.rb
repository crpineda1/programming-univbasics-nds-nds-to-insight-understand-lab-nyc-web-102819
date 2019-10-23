$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
# Call the method directors_database to retrieve the NDS

def pretty_print_nds(nds)
  # Change the code below to pretty print the nds with pp
  pp nds
end


def print_first_directors_movie_titles
  nds = directors_database
  row = 0
  while row < nds.count do
    if nds[row][:name] == "Stephen Spielberg"
      element = 0
      while element < nds[row][:movies].count do
          puts nds[row][:movies][element][:title]
        element += 1
      end
#    else

    end
    row += 1
  end
end
