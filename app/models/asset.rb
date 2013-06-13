class Asset < ActiveRecord::Base
  attr_accessible :user_id, :protected

  belongs_to :user
  has_attached_file :document
end
