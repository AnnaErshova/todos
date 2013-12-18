#################################
### B I R T H D A Y   R U B Y ###
#################################
require 'date'
require 'time'

class Birthday
	attr_accessor :time, :birthday
	def initialize(yyyymmdd)	# for instance: Birthday.new("19890618")
		#####################################
		@time = Time.now.strftime("%Y%m%d")	# today this will return "20131218"
		#####################################
		this_year = time[0..3]	# gets today's year
		i_year = t_yyy.to_i	# gets next year part 1/3
		year = i_year + 1	# gets next year part 2/3
		next_year = year.to_s	# gets next year part 3/3
		this_month = time[4..5]		# gets today's month
		this_day = time[-2..-1]		# gets today's day

		bd_mmdd = yyyymmdd[4..-1]	# strip year off birthday date
		bd_mm = bd_mmdd[0..1]	# gets birthday month
		bd_dd = bd_mmdd[-2..-1]		# gets birthday day
		
		if bd_mm > this_month
			@birthday = bd_mmdd.insert(0, this_year)
		elsif bd_mm == this_month				
			if  bd_dd >= this_day
				@birthday = bd_mmdd.insert(0, this_year)
			else									
				@birthday = bd_mmdd.insert(0, next_year)
			end
		elsif bd_mm < this_month
			@birthday = mmdd.insert(0, next_year)
		end
		###########################################
		@birthday # Birthday.new("19890618")[@birthday] => "20140618"
		###########################################
		end
	end

	def birthday?
		if time == birthday
			return "You're birthday is today. Happy birthday!"
		else
			t = Date.parse(time)
			b = Date.parse(birthday)
			wait_1 = (t.mjd - b.mjd).abs 	# mjd makes it an integer, abs is absolute value
			wait_2 = (b.mjd - t.mjd).abs
			if wait_1 <= wait_2
				"Your birthday is in #{wait_1} day(s)."
			else
				"Your birthday is in #{wait_2} days(s)."
			end
		end
	end
end