require "test_helper"

class TaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save task without a user" do
    task = Task.new
    task.task_name = "TestName"
    task.task_details = "TestDetails"
    task_deadline = DateTime.now()
    task_done = false
    assert_not task.save, 'Did save'
  end

  test "should not save task when all fields are empty" do
    user = create_user
    task = user.tasks.build
    assert_not task.save, 'Did save'
  end

  test "should save task as long as task name is filled" do
    user = create_user
    task = user.tasks.build
    task.task_name = "TestName"
    assert task.save, 'did not save'
  end

  test "should save task when fields are filled" do
    user = create_user
    task = user.tasks.build
    task.task_name = "TestName"
    task.task_details = "TestDetails"
    task_deadline = DateTime.now()
    task_done = false
    assert task.save, 'did not save'
  end

  # test "should update task when fields are filled with new content" do
  #   task = create_task
  #   task.update(
  #     :task_name => "New Name",
  #     :task_details => "new details",
  #     :task_deadline => DateTime.now(),
  #     :task_done => true
  #   ])

  #   assert task.update, 'did not update'
  # end

  test "should save task with a label" do
    user = create_user
    label = create_label
    task = user.tasks.build
    task.task_name = "TestName"
    task.label_ids = [label.id]
    assert task.save, 'did not save'
  end


  private

  def create_user
    user = User.create(
      email: "test@username.com",
      password: "test_password_1"
    )
  end

  def create_label
    user = User.create(
      email: "test@username.com",
      password: "test_password_1"
    )

    label = user.labels.build(
      label_name: "TestLabel",
    )
  end

  def create_task
    user = User.create(
      email: "test@username.com",
      password: "test_password_1"
    )

    task = user.tasks.build(
      task_name: "old name",
      task_details: "old details",
      task_done: false,
      task_deadline: nil
    )

    task
  end
  
end
