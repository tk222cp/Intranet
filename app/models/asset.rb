class Asset < ActiveRecord::Base
  attr_accessible :user_id, :protected

  acts_as_taggable
  acts_as_taggable_on :tags

  belongs_to :user
  has_attached_file :document

  attr_accessible :document, :file_name, :description, :tag_list
end
