require 'csv'

puts 'Clearing DB...'

Bean.destroy_all

puts "Adding soybeans from 'soybean-large.data' to DB..."

data_structure = Bean.data_structure
soybean_large_data = CSV.read('lib/soybean_data/soybean-large.data')

soybean_large_data.each do |soybean|
  new_soybean = Bean.create
  soybean.each_with_index do |data, i|
    column = data_structure[i][:column]
    value = i == 0 ? data : data_structure[i][:data][data.to_i]
    new_soybean[column.to_sym] = value
  end
  new_soybean.save
end

puts 'Soybeans successfully added to DB!'
