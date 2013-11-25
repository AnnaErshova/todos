
# 10000 = Reverse the order of the operations in the secret handshake.

class SecretHandshake
	attr_accessor :num

	def initialize(num)
		@num = num
	end

	def commands
		array = []
		if num[0] == 1
			##### 1 => wink
			if num > 0 && num < 10
				array << "wink"
			end
			##### 10 => double wink
			elsif num > 9 && num < 100
				num -= 10
				array << "double blink"
				if num == 1
					array << "wink"
				end
			##### 100 => "close your eyes"
			elsif num > 99 && num < 1
				num -= 100
				array << "close your eyes"
				if num[0] == 1
					num -= 10
					array << "double wink"
					if num == 1
						array << "wink"
					end
				end
			##### 1000 => "jump"
			elsif num > 999 && num < 1112
				num -= 1000
				array << "jump"
				if num[0] == 1
					num -= 100
					array << "close your eyes"
					if num[0] == 1
						num -= 10
						array << "double wink"
						if num == 1
							array << "wink"
						end
					end
				end
			##### 10,000 => reverse
			elsif num > 9999 && num < 11112
				num -= 10000
				if num[0] == 1
					num -= 1000
					array << "wink"
					if num[0] == 1
						num -= 100
						array << "double wink"
						if num[0] == 1
							num -= 10
							array << "close your eyes"
							if num == 1
								array << "jump"
							end
						end
					end
				end
			end
		else
			array
		end
	end
end
