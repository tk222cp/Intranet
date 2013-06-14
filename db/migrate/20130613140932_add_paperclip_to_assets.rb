class AddPaperclipToAssets < ActiveRecord::Migration
  def change
    add_column :assets, :file_name, :string
    add_column :assets, :description, :string
  end
end
