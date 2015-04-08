class AddSurveyColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :age, :string
    add_column :users, :job, :string
    add_column :users, :industry, :string
    add_column :users, :race, :string
    add_column :users, :language, :string
  end
end
