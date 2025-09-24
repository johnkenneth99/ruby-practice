# https://leetcode.com/problems/group-anagrams/

# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
  result = {}

  strs.each do | str |
    ch_frquency = Array.new(26, 0)

    str.each_char do | char |
      index = char.ord % "a".ord
      ch_frquency[index] += 1 
    end

    key = ch_frquency.join("|")

    if !result[key]
      result[key] = []
    end

    result[key].push(str)
  end

  result.each_value.to_a
end

result = group_anagrams ["eat","tea","tan","ate","nat","bat"]