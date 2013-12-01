pigeon_data = {
  :color => {
	:purple => ["Theo", "Peter Jr.", "Lucky"],
	:grey => ["Theo", "Peter Jr.", "Ms .K"],
	:white => ["Queenie", "Andrew", "Ms .K", "Alex"],
	:brown => ["Queenie", "Alex"]
  },
  :gender => {:male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"], :female => ["Queenie", "Ms .K"]
  },
  :lives => {
	"Subway" => ["Theo", "Queenie"],
	"Central Park" => ["Alex", "Ms .K", "Lucky"],
	"Library" => ["Peter Jr."],
	"City Hall" => ["Andrew"]
  }
}

#########   n a m e s ############################################################

# make a new hash
name_array = []
pigeon_data[:gender].each {|k,v|v.each {|e|name_array<<e}}
# insert empty hashes at odd numbered array indexes
if index % 2 != 0
	name_array.insert({})
end
# turn array elements into hash keys and turn array into a hash pigeon_list
# format => h1 = Hash[*a1.flatten]
pigeon_list = Hash[*name_array.flatten]
#################################################### O R ############################
count = 0
pigeon_list = Hash.new
(name_array.length / 2).times do
	pigeon_list[name_array[count]] = name_array[count+1]
	count += 2
end
pigeon_list
#will have keys of names associated with empty hashes}

##########   g e n d e r   a n d    l o c a t i o n   ############################

pigeon_data.each do |cgl,hash|
	if cgl == :gender || cgl == :lives
		hash.each do |k,v|
			v.each do |element|
				#element_key = element.to_key# turn element into a key
				pigeon_list[element][cgl] = k.to_sym
			end
		end
	end
end

##########   c o l o r ############################################################

# makes color an empty array in each variable
pigeon_list.each |name, values|
	pigeon_list[name][:color] = []
end
# shovels in the data
pigeon_data[:color].each do |k,v|
	v.each do |element|
		pigeon_list[element][:color] << k.to_sym
	end
end

###################################################################################
pigeon_list
print pigeon_list


# pigeon_list = {
#   "Theo" => {
#     :color => ["purple", "grey"],
#     :gender => "male",
#     :lives => "Subway"
#   },
#   "Peter Jr." => {
#     :color => ["purple", "grey"],
#     :gender => "male",
#     :lives => "Library"
#   },
#   "Lucky" => {
#     :color => ["purple"],
#     :gender => "male",
#     :lives => "City Hall"
#   },
#   "Ms .K" => {
#     :color => ["grey", "white"],
#     :gender => "female",
#     :lives => "Central Park"
#   },
#   "Queenie" => {
#     :color => ["white", "brown"],
#     :gender => "female",
#     :lives => "Subway"
#   },
#   "Andrew" => {
#     :color => ["white"],
#     :gender => "male",
#     :lives => "Central Park"
#   },
#   "Alex" => {
#     :color => ["white", "brown"],
#     :gender => "male",
#     :lives => "Central Park"
#   }
# }
