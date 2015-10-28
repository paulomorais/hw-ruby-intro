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
  return false if arr.empty?
  return false if arr.length == 1
  arr.each {|e| return true if arr.bsearch { |x| x == n-e } != nil }
  false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  return false if s[0] == nil
  return true if s[0][/[qwrtypsdfghjklzxcvbnm]/i] != nil
  false
end

def binary_multiple_of_4? s
  return false if s == nil
  return false if s[/^[01]+$/] == nil
  return s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    raise ArgumentError if isbn.empty?
    raise ArgumentError if price <= 0
  end
  attr_accessor :isbn, :price
  
  def price_as_string
    return "$%.2f" % price
  end
end

raise 'sum([]) != 0' unless sum([]) == 0
raise 'sum([2,5]) != 7' unless sum([2,5]) == 7
raise 'sum([4]) != 4' unless sum([4]) == 4

raise 'max_2_sum([]) != 0' unless max_2_sum([]) == 0
raise 'max_2_sum([2,5]) != 7' unless max_2_sum([2,5,1,3]) == 8
raise 'max_2_sum([4]) != 4' unless max_2_sum([4]) == 4