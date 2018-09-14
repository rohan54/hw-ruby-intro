# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0, :+)
end

def max_2_sum arr
  max2 = arr.max(2) # Extracting max 2 numbers from array
  max2.inject(0, :+)# Computing sum
end

def sum_to_n? arr, n
  arr2 = arr.combination(2) #Creates every possible combination of 2 elements
  ans = false
  #Iterate over each combination to check its equality to n
  arr2.each do |arr1| 
              sum = arr1.inject(0,:+)
              if sum == n
                ans = true 
               break
              end
            end
  ans
end

# Part 2

def hello(name)
  "Hello, "+ name
end

def starts_with_consonant? s
  #If starting character is not a,e,i,o,u or non-letter then it will be a consonant.
  #not a,e,i,o,u or non-letter => ^aeiou\W
  #^ means not
  #\W means non-letter
  #Abve condition is for first character hence ^[....]
  #i at the end makes match case insensitive
  
  /^[^aeiou\W]/i.match(s) != nil
end

def binary_multiple_of_4? s
  #For binary multiple of 4, last 2 bits should be 00 or string can itself be 0
  /[^01]/.match(s)==nil && ( s.end_with?("00") ) || s=="0"
end

# Part 3

class BookInStock
  
  attr_accessor :isbn, :price
  
  def initialize(isbn, price) 
    if(isbn=="" || price<=0)
      raise ArgumentError
    end 
    # Instance variables  
    @isbn = isbn  
    @price = price  
  end  
  
  def price_as_string
    #Restrict float to 2 decimals
    num = '%.2f' % @price
    "$"+"#{num}"
  end
  
end