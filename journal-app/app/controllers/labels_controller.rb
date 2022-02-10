class LabelsController < ApplicationController

   def create
      @task = Task.find(params[:post_id])
        @label = @task.comments.create(params[:label].permit(:name, :label))
      redirect_to task_path(@task)    
  end

  def destroy
      @task = Task.find(params[:post_id])
      @label = @task.comments.find(params[:id])
      @label.destroy
      redirect_to task_path(@task)
  end

end
