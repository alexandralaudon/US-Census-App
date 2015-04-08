class AddRaceColumnsToState < ActiveRecord::Migration
  def change
    add_column :states, :pct_white, :decimal
    add_column :states, :pct_black, :decimal
    add_column :states, :pct_am_ind, :decimal
    add_column :states, :pct_asian, :decimal
    add_column :states, :pct_nat_haw_oth, :decimal
    add_column :states, :pct_two_or_more, :decimal
  end
end
