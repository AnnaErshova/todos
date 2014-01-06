# %w(foo bar).each_with_object({}) { |str, hsh| hsh[str] = str.upcase }
# => {'foo' => 'FOO', 'bar' => 'BAR'}

def even_sum(array)
	array.each_with_object([]) do |word, array| 
		if word.length % 2 == 0
			array << word.reverse 
		end
	end
end