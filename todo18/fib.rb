# prereqs: arrays, methods, conditional logic
# create a method that returns the nth number of the fibonacci sequence
# fib sequence = 0,1,1,2,3,5,8,13 etc, assume the 1st element is 0 (the first number), the 2nd element is 1, the third element is 1
def fibo_finder(n)
	hash = Hash.new{ |h,k| h[k] = k < 2 ? k : h[k-1] + h[k-2] }}
	hash[n]
end
#  x(n) = x(n-1) + x(n-2)