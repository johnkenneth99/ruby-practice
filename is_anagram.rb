# https://leetcode.com/problems/valid-anagram/

# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  return false if s.length != t.length

  s_count = {}
  t_count = {}
  index = 0

  while index < s.length
    s_count[s[index]] = s_count.fetch(s[index], 0) + 1
    t_count[t[index]] = t_count.fetch(t[index], 0) + 1

    index += 1
  end 

  s_count.each_key do | key |
    return false if s_count[key] != t_count[key]
  end

  true
end

puts is_anagram "anagram", "nagaram"