class User < ActiveRecord::Base

  has_secure_password

  belongs_to :state

  AGE = ['0-12', '13-17', '18-26', '27-35', '36-45', '46-55', '56-64', '65+']
  JOB = ['Airline Pilot', 'Lawyer', 'Computer Engineer', 'Natural Sciences Manager', 'Marketing Manager', 'Engineering Manager', 'Petroleum Engineer', 'CEO of a failing company', 'CEO of a successful company', 'Dentist', 'Surgeon']
  INDUSTRY = ['Health', 'IT Services', 'Business Products and Services', 'Energy', 'Financial Services', 'Human Resources', 'Logistics and Transportation', 'Consumer Products and Services', 'Construction', 'Telecommunications']
  RACE = ['White (non-hispanic)', 'Hispanic', 'Asian', 'Black or African American', 'Native Hawaiians or Other Pacific Islander', 'Middle Eastern or Arab American', 'Native American', 'Two or more races', 'Other']
  LANGUAGE = ['English', 'Spanish', 'Manderian', 'French', 'German', 'Arabic', 'Italian', 'Russian', 'Korean']

  validates :email, presence:true, uniqueness:true

  validates :age,       inclusion:AGE
  validates :job,       inclusion:JOB
  validates :industry,  inclusion:INDUSTRY
  validates :race,      inclusion:RACE
  validates :language,  inclusion:LANGUAGE

  def first_name
    "#{email[/[^@]+/]}".titleize
  end

end
