# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
	max = nums[0]
	nums.inject(0) do |sum, ele|
		sum += ele
		max = sum if sum > max
		sum < 0 ? 0 : sum
	end
	max
end

puts max_sub_array([-2, 1, -3, 4, -1, 2, 1, -5, 4])
