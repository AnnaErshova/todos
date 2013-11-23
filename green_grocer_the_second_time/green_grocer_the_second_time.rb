ITEMS = [  {"AVOCADO" => {:price => 3.00, :clearance => true}},
			{"KALE" => {:price => 3.00,:clearance => false}},
			{"BLACK_BEANS" => {:price => 2.50,:clearance => false}},
			{"ALMONDS" => {:price => 9.00, :clearance => false}},
			{"TEMPEH" => {:price => 3.00,:clearance => true}},
			{"CHEESE" => {:price => 6.50,:clearance => false}},
			{"BEER" => {:price => 13.00, :clearance => false}},
			{"PEANUTBUTTER" => {:price => 3.00,:clearance => true}},
			{"BEETS" => {:price => 2.50,:clearance => false}}]

COUPS = [	{:item=>"AVOCADO", :num=>2, :cost=>5.00},
			{:item=>"BEER", :num=>2, :cost=>20.00},
			{:item=>"CHEESE", :num=>3, :cost=>15.00}]

#randomly generates a cart of items
def generateCart
	cart = []
	rand(20).times do
		cart.push(ITEMS.sample)  
	end
	cart
end

def add_count_key(cart)
	cart.each do |item|
		item.each do |name, data|
			data[:count] = 0
		end
	end
end
# because the avocados are all the same object (even though in the commented out section above they are distinct)
# you can iterate through the list. the first iteration will increase all their (really it's just 'its' becuase it's ONE object)
# counts by one, second to two, third to three
def count_items(cart)
	cart.each do |item|
		item.each do |name, data|
			data[:count] += 1
		end
	end
	cart.uniq
	# deletes duplicates of the same object
end

def update_clearance_prices(cart)
	cart.each do |item|
		item.each do |name, data|
			if data[:clearance]
				data[:price] *= 0.8
			end
		end
	end
end

#this whole method will only return true if every item is under $5
def under_five(cart)
	cart.all? do |item|
		item.all? do |name, data|
			data[:price] <= 5
		end
	end
end

def generateCoups
	coups = []
	rand(2).times do
		coups.push(COUPS.sample)
	end
	coups
end

def apply_coupons_and_chekcout(cart, coupons)
	total_price = 0.00
	cart.each do |item|
		item.each do |name, data|
			coupons.each do |coupon|
				if coupon[:item] == name && coupon[:num] <= data[:count]
					data[:count] -= coupon[:num]
					total_price += coupon[:cost]
				end
			end
			total_price += data[:price] * data[:count]
		end
	end
	if under_five(cart) && total_price > 10
		total_price -= 10
	end
	total_price
end


########################   c a r t    s t u f f    #####################################
puts
cart = generateCart
puts "Here is your cart: "
puts cart
puts 
cart = add_count_key(cart)
cart = count_items(cart)
cart = update_clearance_prices (cart)

################   c h e c k o u t     &    c o u p o n     s t u f f    ################

coupons = generateCoups
puts "Here are your coupons: "
puts coupons
puts
price = apply_coupons_and_chekcout(cart, coupons)
puts "Your total will be $#{price}"
