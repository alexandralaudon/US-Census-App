namespace :states do
desc 'adds all states to a table'
  task :news_attributes => :environment do

    CensusAPI.new.location[:response].each do |state|
      State.find_by(place_name: state[:Placename]).update_attributes(
          pct_white: state[:PctWhite],
          pct_black: state[:PctBlack],
          pct_am_ind: state[:PctAmInd],
          pct_asian: state[:PctAsian],
          pct_nat_haw_oth: state[:PctNatHawOth],
          pct_two_or_more: state[:PctTwoOrMore],
          pct_hisp: state[:PctHisp],
          pct_non_hisp: state[:PctNonHisp],
          pct_non_hisp_white: state[:PctNonHispWhite],
          pct_other: state[:PctOther],
          diversity_index: state[:USATDiversityIndex],
          land_sq_mi: state[:LandSqMi],
          water_sq_mi: state[:WaterSqMi],
          tot_sq_mi: state[:TotSqMi],
          lat: state[:Lat],
          long: state[:Long],
          housing_units: state[:HousingUnits],
          pct_vacant: state[:PctVacant]
      )
      puts "#{State.last.place_name} was updated"
    end

  end
end
