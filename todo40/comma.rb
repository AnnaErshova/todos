def separate_with_comma(n) # (10000)
  string = n.to_s
  length = string.length # 5

  num_of_commas = length / 3
  num_of_arrays = num_of_commas + 1

  new_array = []
  num_of_arrays.times { new_array << [] }

  counter = -1
  num_of_commas.times do
    new_array[counter] << string[-3..-1]
    counter -= 1
    string = string[0...-3]
  end
  new_array[0] << string

  new_array.join(',')
end