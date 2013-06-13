class AddPaperclipToAssets < ActiveRecord::Migration
  def change
    add_column :assets, :file_name, :string
    add_column :assets, :content_type, :string
    add_column :assets, :file_size, :integer
  end
end
