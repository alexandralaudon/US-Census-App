namespace :states do
desc 'adds all states to a table'
  task :add_all => :environment do

    CensusAPI.new.location[:response].map do |state|
      State.create!(place_name: state[:Placename], pop: state[:Pop], pct_change: state[:PctChange], pop_sq_mi: state[:PopSqMi], state_postal: state[:StatePostal], fips: state[:FIPS], gnis: state[:GNIS])
      puts "#{State.last.place_name} was created"
    end

    puts "#{State.count} states were created (This should equal 51 since we're including Washington DC)"
  end

end
