def my_select(nums)
  # your code here!
  new_array = []
  i = 0
  while i < nums.length
    value = yield(nums[i])
    if value == true
      new_array.push(nums[i])
    end
    i += 1
  end
  new_array
end

my_select([1, 2, 3, 4, 5]) do |num|
  if num.even?
    true
  end
end
