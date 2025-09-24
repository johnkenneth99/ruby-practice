# https://www.theodinproject.com/lessons/ruby-sub-strings

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word = "", dictionary = [])
  my_hash = {}

  dictionary.each do | entry |
    if word.downcase.include? entry.downcase
      my_hash[entry] = 1
    end
  end

  my_hash
end

puts substrings "Howdy partner, sit down! How's it going?", dictionary
puts substrings "below", dictionary
