###################
#### A R R A Y ####
###################

def array_init(items = 5)
	if block_given? = false # see below :
		array = Array.new(items) 
		{ |i| yield i } 
	else
		array = Array.new(items) 
		{ |i| (100 * i) }
	end
	
end

# http://apidock.com/ruby/Kernel/block_given%3F : 
# def try
#   if block_given?
#     yield
#   else
#     "no block"
#   end
# end
# try                  #=> "no block"
# try { "hello" }      #=> "hello"
# try do "hello" end   #=> "hello"