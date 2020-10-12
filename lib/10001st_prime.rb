# Implement your procedural solution here!
def is_prime?(n)
  return false if n.zero? || n == 1 
  integers =* (2..Math.sqrt(n).round)
  integers.each{|i| return false  if (n % i).zero?}
  true
end 

def prime_number_for(nth_element)
  count = 0 
  number = 0 
  while count != nth_element
    number +=1
    count += 1 if is_prime?(number)
  end 
  number
end 

