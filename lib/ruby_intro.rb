# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return 0 if arr.empty?
  arr.inject(:+)
end

def max_2_sum arr
  return 0 if arr.empty?
  return arr[0] if arr.length == 1
  arr.sort! { |x,y| y <=> x }
  return arr[0] + arr[1]
end

def sum_to_n? arr, n
  # YOUR CODE HERE
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end

raise 'sum([]) != 0' unless sum([]) == 0
raise 'sum([2,5]) != 7' unless sum([2,5]) == 7
raise 'sum([4]) != 4' unless sum([4]) == 4

raise 'max_2_sum([]) != 0' unless max_2_sum([]) == 0
raise 'max_2_sum([2,5]) != 7' unless max_2_sum([2,5,1,3]) == 8
raise 'max_2_sum([4]) != 4' unless max_2_sum([4]) == 4