namespace :user_refresh
desc 'Refreshes the user table with 50 new users'
  task :create_and_associate => :environment do
    require 'faker'

    User.destroy_all

    50.times do |user|
      
    end

  end
