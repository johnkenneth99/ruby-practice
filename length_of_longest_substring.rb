# https://leetcode.com/problems/longest-substring-without-repeating-characters/

# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  seen = {}
  left = 0
  right = 0
  longest = 0
  
  while right < s.length
    ch = s[right]

    while seen[ch]
      left_char = s[left]
      seen.delete s[left_char]

      left += 1
    end

    seen[ch] = true
    longest = [longest, right - left + 1].max

    right += 1
  end

  longest
end

result =  length_of_longest_substring "abcabcbb"