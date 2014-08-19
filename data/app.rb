require 'csv'




drives = {}

CSV.foreach('gschool_commute_data.csv', :headers => true, :header_converters => :symbol, :converters => :all) do |row|
  drives[row.fields[0]] = Hash[row.headers[1..-1].zip(row.fields[1..-1])]
  puts drives.inspect
end


# drives[row.fields[0]] = Hash[row.headers[1..-1].zip(row.fields[1..-1])]

# CSV.foreach('gschool_commute_data.csv', :headers => true) do |row|
#  puts row
# end

