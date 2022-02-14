class LabelsController < ApplicationController

  def index
    @labels = Label.all
  end

  def new
    @label = Label.new
  end

  def create
    @label = Label.new(label_params)

    if @label.save
     redirect_to tasks_path
    else
     render 'new'
    end
  end

  def show
   @label = Label.find(params[:id])
  end

  def update
    @label = Label.find(params[:id])

    if @label.update(label_params)
     redirect_to @label
    else
     render 'edit'
    end
  end

  def edit
    @label = Label.find(params[:id])
  end

  def destroy
    @label = Label.find(params[:id])
    @label.destroy
    redirect_to labels_path
  end

  private

  def label_params
   params.require(:label).permit(:label_name, :label_details)
  end

end
