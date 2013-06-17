require 'test_helper'

class AssetTest < ActiveSupport::TestCase
	test "should not save asset without filename" do
 	 	asset = Asset.new
  		assert !asset.save
	end

	test "protected should be true as default" do
 	 	asset = Asset.new
 	 	asset.file_name = "test"
 	 	asset.save
  		assert asset.protected = true
	end
end
