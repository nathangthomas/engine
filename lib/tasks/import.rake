require 'csv'
namespace :import do

  desc "Import merchants from csv"
  task merchants: :environment do
    filename = "./db/csv/merchants.csv"
    CSV.foreach(filename, headers: true) do |row|
      id, name = row
      Merchant.create(id: id, name: name)
   end
  end
end
