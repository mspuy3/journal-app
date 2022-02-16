class TasksController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]
    before_action :correct_user, only: [:edit, :update, :destroy, :show]

    def index
        @tasks = Task.all
        # @tasks = current_user.tasks.all
    end

    def new
        # @task = Task.new
        @task = current_user.tasks.build
    end

    def create
        # @task = Task.new(task_params)
        @task = current_user.tasks.build(task_params)

        if @task.save
            redirect_to tasks_path
        else
            render 'new'
        end
    end

    def show
        @task = Task.find(params[:id])
    end

    def update
        @task = Task.find(params[:id])

        if @task.update(task_params)
            redirect_to @task
        else
            render 'edit'
        end
    end

    def edit
        @task = Task.find(params[:id])
    end

    def destroy
        @task = Task.find(params[:id])
        @task.destroy

        redirect_to tasks_path
    end


    def correct_user
        @task = current_user.tasks.find_by(id: params[:id])
        redirect_to tasks_path, notice: "Can't Change This!" if @task.nil?
    end

    private

    def task_params
        params.require(:task).permit(:task_name, :task_details, :task_deadline, :task_done, :user_id, label_ids:[])
    end

end
