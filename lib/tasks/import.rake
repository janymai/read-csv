require 'csv'
namespace :import do
  desc "Get airport code from csv file"
  task airport: :environment do
    # get pwd airport_codes.csv
    airport_code_file = Rails.root + "public/airport_codes.csv"

    CSV.foreach(airport_code_file, headers: true) do |row|
      # Each row like a array. We will get value by this way:
      # row[0] => id
      # row[1] => city
      # row[2] => country
      # row[3] => airport_code
      AirportCode.create!(city: row[1], country: row[2], airport_code: row[3])
    end
  end

end
