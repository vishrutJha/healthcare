require 'csv'

namespace :drug_list do
  desc "TODO"
  task index: :environment do
    puts "Adding prepared Drug list"
    drug_list = CSV.read(Rails.root.join('druglist.csv'))
    drug_list.each do |drug|
      Drug.create(
        name: drug[0], trade_name: drug[1], dosage: drug[2],
          indication: drug[3], contra_indication: drug[4], side_effect: drug[5])
      puts "  Added "+drug[0].to_s
    end
  end
end
