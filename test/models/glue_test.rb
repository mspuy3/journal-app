require "test_helper"

class GlueTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save glue without a user" do
    glue = Label.new
    assert_not glue.save
  end

end
