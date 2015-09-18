require 'pry'

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

def nyc_pigeon_organizer(data)
  organized_data = {}
  data.each do |attribute, values|
    values.each do |value, names|
      names.each do |name|
        if organized_data.include?(name) == false
          organized_data[name] = {attribute => [value.to_s]}
        else
          if organized_data[name].include?(attribute) == false
            organized_data[name][attribute] = [value.to_s]
          else  
            organized_data[name][attribute] << value.to_s
          end
        end
      end
    end
  end
  organized_data
end
