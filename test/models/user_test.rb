require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "should be valid" do
        assert @user.valid?
    end

    test "name should be present" do
        @user.name = ""
        assert_not @user.valid?
    end

    test "phone should be present" do
        @user.phone = "     "
        assert_not @user.valid?
    end
    
    test "email addresses should be unique" do
    duplicate_user = @user.dup
    @user.save
    assert_not duplicate_user.valid?
  end
end
