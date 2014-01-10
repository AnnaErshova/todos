class Hash
	def keys_of(*args)
		array = []
		self.each do |key, value|
			args.each do |arg|
				if value == arg
					array << key 
				end
			end
		end
		array
	end
end