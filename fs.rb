# Recursive Fibonacci Sequence

def recursive_fib(num)
  if num <= 1
    return  num  
  else
    recursive_fib(num - 1) + recursive_fib(num - 2)
  end
end 

#########################################################################

# Iterative Fibonacci Sequence

def iterative_fib(num)
  num1 = 0
  num2 = 1
  num.times do
    x = num1 
    num1 = num2
    num2 = x + num2
  end
return num1
end

num = gets.chomp.to_i
puts "Recursive Fibonacci Sequence"
puts recursive_fib(num)
puts "-----"
puts "Iterative Fibonacci Sequence"
puts iterative_fib(num)
puts "-----"
puts "Benchmark (num = 35)"
require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end