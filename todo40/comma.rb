# def separate_with_comma(n)
#   n.to_s.reverse.gsub(/...(?=.)/,'\&,').reverse
# end

def separate_with_comma(n) # (10,000)
  string = n.to_s
  length = string.length # 5

  num_of_commas = length / 3
  num_of_arrays = num_of_commas + 1

  new_array = []
  num_of_arrays.times { new_array << [] }


  counter = 0
  num_of_commas.times do
    << n[-1..-3]

  end

end
