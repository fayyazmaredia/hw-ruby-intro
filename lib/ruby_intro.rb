# When done, submit this entire file to the autograder.

# Part 1
#http://ruby-doc.org/core-2.5.0/Array.html

def sum arr
  # YOUR CODE HERE
  sum = 0
  if arr.empty? 
    return 0
  else
    arr.each { |e| sum += e }
    return sum
  end
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.empty? 
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    arr.max(2).sum
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.empty? || arr.length == 1
    return false
  else
    arr.permutation(2).any? { |x, y| x + y == n }
  end
end

# Part 2
#http://ruby-doc.org/core-2.5.0/String.html
#http://ruby-doc.org/core-2.5.0/Regexp.html

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.empty?
    return false
  else
    s[0].match(/^[b-df-hj-np-tv-z]/i) != nil
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
	if s.empty?
	  return false
	elsif s == "0"
	  return true
	else 
	  s.match(/^[10]*00$/) != nil
	end
end

# Part 3
#https://www.ruby-lang.org/en/documentation/quickstart/3/
#http://rubylearning.com/satishtalim/ruby_exceptions.html

class BookInStock
# YOUR CODE HERE
attr_accessor :isbn, :price
def initialize(isbn, price)
  if isbn.empty? || price <= 0
    raise ArgumentError, 'ISBN and Price exception'
  end
  @isbn = isbn
  @price = price
end

def price_as_string
  "$%2.2f" % @price
end
end
