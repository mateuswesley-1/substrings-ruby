## Done with Ruby 3.1.2
require 'pry-byebug'


# receives a string and a array of sub-strings, and generates a Hash with
# the substring as keys, and the number os occurrences of the substring in the string as
# values
def substring(string, dictionary)
  sub_counts = Hash.new()
  string.downcase!
  dictionary.each do |substring|
      sub_counts[substring] = string.scan(/(?=#{substring})/).length
  end
  sub_counts
end

p substring('anamataana xanabelaxana fuceta etanoletaenergetico', ['xana', 'ana', 'fo', 'eta'])

