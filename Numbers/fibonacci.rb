def fib(key_num, num1 = 0, num2 = 1)
  current = num1 + num2
  puts current
  current == key_num ?  return : fib(key_num, current, num1)
end

print "Number to terminate Fibonacci sequence at: "
input = gets.strip.to_i
fib(input)