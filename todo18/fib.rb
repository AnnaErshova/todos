#############
### F I B ###
#############

########################################################################################################
# My terribly hacky solution for the spec
# def fibo_finder(n)
# 	array = [0,1,1,2,3,5,8,13,21,34,55,89,144,233,377,610,987,1597,2584,4181,6765]
# 	return array[n]
# end
########################################################################################################
# from meowist.github
def fibo_finder(n)
  if n <= 1
  	n
  else
    fibo_finder(n-1) + fibo_finder(n-2)
  end
end
# this method uses recursion, which is a concept that kinda blows my mind
########################################################################################################