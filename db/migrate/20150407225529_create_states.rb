class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :place_name
      t.integer :pop
      t.decimal :pct_change
      t.decimal :pop_sq_mi
      t.string :state_postal
      t.integer :fips
      t.integer :gnis
    end
  end
end
