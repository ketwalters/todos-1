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


#i looked through the hash for gender since i knew no pigeon's were repeated
#working on the solution for the general case, since this way is cheaty
pigeon_list = {}
pigeon_data[:gender].each do |gender, pigeon_names|  
  pigeon_names.each do |name|
  pigeon_list[name] = {}
  end
end
  
pigeon_list.each do |name, attributes|
  attributes[:color] = []
end

pigeon_data[:color].each do |color, pigeon_names|
  pigeon_names.each do |name|
    pigeon_list[name][:color] << color
  end
end

pigeon_data[:gender].each do |gender, pigeon_names|
  pigeon_names.each do |name|
    pigeon_list[name][:gender] = gender
  end
end

pigeon_data[:lives].each do |location, pigeon_names|
  pigeon_names.each do |name|
    pigeon_list[name][:lives] = location
  end
end


puts pigeon_list

# Iterate over the hash above collecting each pigeon by name and insert it
# as the key of a new hash where each name holds the attributes for that bird. 
# Your output should match the hash below:

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
