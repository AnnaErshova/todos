###################
#### A R R A Y ####
###################

def array_init(parameter = 5)
	array = [] 
	if block_given? == false # see below ================>===
		parameter.times { |i| array << (100 * i).to_s }		#
	else													#
		parameter.times { |i| array << yield(i)} 			#
	end														#
	array													#
end														    #
															#
# http://apidock.com/ruby/Kernel/block_given%3F : <=========#
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