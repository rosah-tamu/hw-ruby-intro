# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  ans = 0
  i = 0
  while i < arr.length
    ans += arr[i]
    i = i + 1
  end
  return ans
end

def max_2_sum arr
  ans = 0
  if arr.length == 0
    ans =  0
  elsif arr.length == 1
    ans = arr [0]
  else
    i=0
    max2 = -(2**(0.size * 8 -2))
    max1 =  max2 + 1
    
    while i < arr.length
      if arr[i] > max1 
        max2 = max1
        max1 = arr[i]
      elsif arr[i] > max2
        max2 = arr[i]
      end
      i = i + 1
    end
    ans = max2 + max1
  end    
end

def sum_to_n? arr, n
  i = 0
  if arr.length <= 1
    return false
  end
    
  while i < arr.length
    j = i +1
    val1 = arr[i]
    while j < arr.length
      val2 = val1 + arr[j]
      if val2 == n
        return true
      end  
      j = j +1
    end  
    i = i + 1 
  end
  return false
end

# Part 2

def hello(name)
  ans =  "Hello, " + name
  return ans
end

def starts_with_consonant? s
  if s.match(/^[^AEIOUaeiou]/) && s.match(/^[a-zA-Z]/)
    return true
  else 
    return false
  end  
end

def binary_multiple_of_4? s
  if s.match(/^[01\s]+$/)
    if s[s.length-1] == '0' && s[s.length-2] == '0'
      return true
    else
      return false
    end  
  else
    return false
  end  
end

# Part 3

class BookInStock
  def initialize(is, pr)
    raise ArgumentError.new() if is.to_s.strip.empty? || pr <= 0
    @isbn = is
    @price = pr
  end
  
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  def isbn=(is)
    @isbn = is
  end
  
  def price=(pr)
    @price = pr
  end
  
  def price_as_string
    return "$" + '%.2f' % @price
  end  
end
