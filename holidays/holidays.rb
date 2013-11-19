def apple_picker(fruit_array)
	apple_array = []
	fruit_array.each do |fruit|              
		if fruit == "apple"
			apple_array << fruit
		end
	end
	apple_array
end

holiday_supplies = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :forth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}
#1.
holiday_supplies[:summer][:forth_of_july][1]

#2. add supply to winter insert(1, scott)
holiday_supplies[:winter][:christmas] << "tinsel"

#3. add a supply to memorial day.
holiday_supplies[:spring][:memorial_day] << "hot dogs"

#4. add a new holiday to any season with supplies.
holiday_supplies[:fall] << {:halloween => "candy"}
#or
holiday_supplies[:fall][:halloween] = "candy"}

#5. Write a method to collect all Winter supplies from all the winter holidays.
# ex: `winter_suppliers(holiday_supplies) #=> ["Lights", "Wreath", etc]`
def winter_suppliers(holiday_supplies)
	winter_suppliers = []
	holiday_supplies.each do |season, hash|
		if season == "winter"
			hash.each do |holiday, array|
				array.each do |supplies|
					winter_suppliers << supplies
				end
			end
		end
	end
	winter_suppliers
end	

#6. Write a loop to list out all the supplies you have for each holiday and the season
def all_supplies(holiday_supplies)
	holiday_supplies.each do |season, hash|
		puts "#{season.capitalize}:"
		hash.each do |holiday, array|
			puts "#{holiday.capitalize}: "
			array.each do |supplies|
				prints supplies.join(" and ")
			end
		end
	end
end	

#7. 













