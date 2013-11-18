########################
# NYC PIGEON ORGANIZER #
########################

# Start with the following collected data on NYC pigeons.

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms .K"],
    :white => ["Queenie", "Andrew", "Ms .K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms .K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms .K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

# Iterate over the hash above collecting each pigeon by name and insert it
# as the key of a new hash where each name holds the attributes for that bird. 
# Your output should match the hash below:

#step one: create empty hash
pigeon_list = {}

#step two: add pidgeon names to hash
pigeon_data.each do |color_gender_lives, hash|
  hash.each do |colors_genders_locations, array|
    array.each do |name| 
      pigeon_list[name] = {}

      #step three: adds keys of color (as array), gender (as string), and lives (as string)
      pigeon_data.each do |color_gender_lives, hash|
        if color_gender_lives == :color
          pigeon_list[name][color_gender_lives] = [] #because it is supposed to be an array
        else # color_gender_lives == :gender || color_gender_lives == :lives
          pigeon_list[name][color_gender_lives] = "" #becuase they are strings but not within arrays
        end
      
      end
    end
  end
end
        
#step four: push colors into arrays, push locations and genders into the strings
pigeon_data.each do |color_gender_lives, hash|
  hash.each do |colors_genders_locations, array|
    array.each do |name|
      if color_gender_lives == :color
           pigeon_list[name][color_gender_lives] << colors_genders_locations.to_s
       else # color_gender_lives == :gender || color_gender_lives == :lives
           pigeon_list[name][color_gender_lives] = colors_genders_locations.to_s
       end
    end
  end
end

puts pigeon_list

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
