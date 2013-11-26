# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
def key_for_min_value(hash)
	if hash != {}
		array = hash.sort_by{|k,v| v}
		new_hash = Hash[array.map {|key, value| [key, value]}]
		key_array = new_hash.keys
		key_array[0]
	else
		nil
	end
end