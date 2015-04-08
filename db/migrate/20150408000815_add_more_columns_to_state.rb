class AddMoreColumnsToState < ActiveRecord::Migration
  def change
    add_column :states, :pct_hisp, :decimal
    add_column :states, :pct_non_hisp, :decimal
    add_column :states, :pct_non_hisp_white, :decimal
    add_column :states, :pct_other, :decimal
    add_column :states, :diversity_index, :decimal
    add_column :states, :land_sq_mi, :decimal
    add_column :states, :water_sq_mi, :decimal
    add_column :states, :tot_sq_mi, :decimal
    add_column :states, :lat, :decimal
    add_column :states, :long, :decimal
    add_column :states, :housing_units, :integer
    add_column :states, :pct_vacant, :decimal
  end
end
