class AddProtectedToAsset < ActiveRecord::Migration
  def change
  	add_column :assets, :protected, :boolean, :default => true 
  end
end
