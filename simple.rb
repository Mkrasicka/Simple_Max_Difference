def max_difference(px)
  # initialize the maximum difference to -1
  max_diff = -1
  # initialize the minimum price to the first element of the array
  min_px = px[0]
  # loop through the array starting from the second element
  # The reason why we subtract 1 from the length of the array px in the loop condition for i in 1..px.length-1 is to make sure that we only iterate through the
  # array up to the second-to-last element. In Ruby (and many other programming languages), array indices start at 0. So the first element of an array
  # is at index 0, the second element is at index 1, and so on. When we use the loop condition for i in 1..px.length-1, we start the loop at index 1 instead of 0,
  # and we end the loop at the second-to-last index instead of the last index. This is because we don't need to compare the last element to any other element,
  # since we've already compared it to every other element in the array.If we didn't subtract 1 from the length of the array, the loop would try to access an
  # element at an index that doesn't exist, which would cause a "IndexError: index out of range" error.
  for i in 1..px.length-1
    # calculate the price between the current price and the minimum price seen so far
    diff = px[i] - min_px
    # if the difference is positive and difference is greater than or equal to the max difference seen so far ...
    if diff > 0 && diff >= max_diff
      # ... update the maximum difference
      max_diff = diff
    end
    # if the current price is less than the minimum price so far
    if px[i] < min_px
      # update the minimum price
      min_px = px[i]
    end
  end
  return max_diff
end

px = [7, 1, 2, 5]
puts max_difference(px)
