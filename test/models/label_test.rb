require "test_helper"

class LabelTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save label without a user" do
    label = Label.new
    label.label_name = "TestName"
    label.label_details = "TestDetails"
    assert_not label.save, 'Did save'
  end


  test "should not save label when all fields are empty" do
    user = create_user
    label = user.labels.build
    assert_not label.save, 'Did save'
  end

  test "should save label as long as label name is filled" do
    user = create_user
    label = user.labels.build
    label.label_name = "TestName"

    assert label.save, 'did not save'
  end

  test "should save label when field is filled" do
    user = create_user
    label = user.labels.build
    label.label_name = "TestName"
    label.label_details = "TestDetails"
    assert label.save, 'did not save'
  end

  private

  def create_user
    user = User.create(
      email: "test@username.com",
      password: "test_password_1"
    )
  end

end
