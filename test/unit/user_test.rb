require 'test_helper'

class UserTest < ActiveSupport::TestCase
  	test "should not save user without email" do
 	 	user = User.new
  		assert !user.save
	end

	test "should not save user without password" do
 	 	user = User.new
 	 	user.email = "test@test.se"
  		assert !user.save
	end

	test "should not save user without password confirmation" do
 	 	user = User.new
 	 	user.email = "test@test.se"
 	 	user.password = "qwertyuiop"
  		assert !user.save
	end
end
