# data source: https://raw.githubusercontent.com/tategallery/collection/master/artist_data.csv

require('CSV')

male = 0
female = 0
CSV.foreach("artist_data.csv") do |row|
  if row[2] == "Male"
    male = male + 1
  elsif row[2] == "Female"
    female = female + 1
  end
end

total = male + female
percentage_female =  (female.to_f / total.to_f) * 100

puts "male  = #{male}"
puts "female = #{female}"
puts "percentage_female  = #{percentage_female}"
