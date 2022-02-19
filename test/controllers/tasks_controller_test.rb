require "test_helper"

class TasksControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "index" do
      current_user
      @tasks = current_user.tasks.reverse_each
  end

  private

  def create_user
    user = User.create(
      email: "test@username.com",
      password: "test_password_1"
    )
  end

  def create_task
    task = user.tasks.build(
      task_name: "old name",
      task_details: "old details",
      task_done: false,
      task_deadline: nil
    )
  end

end
