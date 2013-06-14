class AddDocumentColumnsToAsset < ActiveRecord::Migration
  def self.up
  	add_attachment :assets, :document
  end

  def self.down
  	remove_attachment :assets, :document
  end
end
