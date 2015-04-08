namespace :user do
desc 'Refreshes the user table with 50 new users'
  task :refresh => :environment do
    require 'faker'

    User.destroy_all

    states_array = State.pluck(:id)
    
    50.times do |user|
      User.create!(email: Faker::Internet.email, password: "password", admin: false, state_id: states_array.sample)
    end

    User.first.update_attributes(admin: true)
    puts "#{User.count} users created"
  end

end
