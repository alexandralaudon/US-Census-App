namespace :user do
desc 'Refreshes the user table with 50 new users'
  task :refresh => :environment do
    require 'faker'

    User.destroy_all

    50.times do |user|
      User.create!(email: Faker::Internet.email, password: "password", admin: false)
    end

    User.first.update_attributes(admin: true)
    puts "#{User.count} users created"
  end

end
