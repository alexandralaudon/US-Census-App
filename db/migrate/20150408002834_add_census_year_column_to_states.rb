class AddCensusYearColumnToStates < ActiveRecord::Migration
  def change
    add_column :states, :census_year, :integer
  end
end
