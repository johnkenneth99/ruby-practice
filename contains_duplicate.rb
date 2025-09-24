# https://leetcode.com/problems/contains-duplicate/

# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
  seen = {}

  nums.each do |num|
    if seen[num]
      return true
    else
      seen[num] = true
    end
  end

  false
end

puts contains_duplicate [1,2,3,1]

puts contains_duplicate [1,2,3,4]
