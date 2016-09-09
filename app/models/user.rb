class User < ActiveRecord::Base
	has_many :services
	has_many :user_comments
	has_many :clinic_profiles
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
   # Including Gravtastic
  include Gravtastic
  gravtastic
end
