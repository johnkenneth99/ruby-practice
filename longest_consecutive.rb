# https://leetcode.com/problems/longest-consecutive-sequence/

# @param {Integer[]} nums
# @return {Integer}
def longest_consecutive(nums)
  num_set = {}
  longest = 0

  nums.each do | num |
    if !num_set[num]
      num_set[num] = true
    end
  end
  puts num_set

  num_set.each_key do | num | 
    if !num_set[num - 1]
      count = 0

      while num_set[num]
        count += 1
        num += 1
      end

      longest = [longest, count].max
    end
  end

  longest
end

puts longest_consecutive [100,4,200,1,3,2]