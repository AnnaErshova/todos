
# 10000 = Reverse the order of the operations in the secret handshake.

class SecretHandshake
	attr_accessor :num

	def initialize(num)
		@num = num
	end

	def commands
		array = []
		int = num.to_i
		if num[0] == "1"
			##### 1 => wink
			if int == 1
				array << "wink"
			##### 10 => double wink
			elsif int > 9 && int < 100
				int -= 10
				array << "double blink"
				if int == 1
					array << "wink"
				end
			##### 100 => "close your eyes"
			elsif int > 99 && int < 1000
				int -= 100
				array << "close your eyes"
				if int.to_s[0] == "1"
					int -= 10
					array << "double blink"
					if int == 1
						array << "wink"
					end
				end
			##### 1000 => "jump"
			elsif int > 999 && int < 1112
				int -= 1000
				array << "jump"
				if int.to_s[0] == "1"
					int -= 100
					array << "close your eyes"
					if int.to_s[0] == "1"
						int -= 10
						array << "double blink"
						if int == 1
							array << "wink"
						end
					end
				end
			##### 10,000 => reverse
			##### 01,234 => reverse
			elsif int > 9999 && int < 11112
				if num[1] == "1"
					array << "jump"
				end
				if num[2] == "1"
					array << "close your eyes"
				end
				if num[3] == "1"
					array << "double blink"
				end
				if num[4] == "1"
					array << "wink"
				end
			#ends if num == 1/10/100/1000/10000
			end
		#ends if num[0] == 1
		end
		array
	#ends method
	end
#ends class
end
