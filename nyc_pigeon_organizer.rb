def nyc_pigeon_organizer(data)
pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

#create an array of all the names
  names = [pigeon_data[:gender][:male] + pigeon_data[:gender][:female]].flatten
  pigeons = {}

names.each do |name|
  pigeons[name] = {}
  pigeon_data.each do |data, name_pigeon|
    #data = color, gender, lives
    pigeon_data[data].each do |type, name_pigeon_data|
      #type = purple, male, central park etc
      name_pigeon_data.each do |name_pigeon_type|
        if name_pigeon_type == name
            pigeons[name][data] = pigeons[name][data].to_a
            pigeons[name][data] << type.to_s
        end
      end
    end
  end
end

pigeons

end
