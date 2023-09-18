require 'csv'

CSV.open('sample1.csv', 'w') do |f|
    f << ["ID", "Name", "Age"]
    f << ["1", "太郎", "25" ]
end
