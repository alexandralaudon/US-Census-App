class User < ActiveRecord::Base
  has_secure_password
  belongs_to :state

  validates :email, presence:true, uniqueness:true

  def first_name
    "#{email[/[^@]+/]}".titleize
  end

end
