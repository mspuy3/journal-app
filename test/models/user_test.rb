require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not register without email" do
    user = User.new
    user.email = ""
    assert_not user.save, "Did register"
  end
  
  test "should not register without password" do
    user = User.new
    user.email = "m@c.com"
    assert_not user.save, "Did register"
  end

  test "should not register with only password" do
    user = User.new
    user.password = "tester1"
    assert_not user.save, "Did register"
  end

  test "should register with both available" do
    user = User.new
    user.email = "m@c.com"
    user.password = 'tester1'
    assert user.save, "Did not register"
  end

end
