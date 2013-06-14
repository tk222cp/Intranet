class User < ActiveRecord::Base

has_many :assets, :dependent => :destroy
accepts_nested_attributes_for :assets, :allow_destroy => true
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable

  attr_accessible :email, :first_name, :last_name, :password, :password_confirmation, :remember_me, :admin
end
