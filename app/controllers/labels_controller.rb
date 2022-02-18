class LabelsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy, :show]

  def index
    # @labels = Label.all
    @labels = current_user.labels.reverse_each
  end

  def new
    # @label = Label.new
    @label = current_user.labels.build
  end

  def create
    # @label = Label.new(label_params)
    @label = current_user.labels.build(label_params)

    if @label.save
     redirect_to labels_path
    else
     render 'new'
    end
  end

  def show
  #  @label = Label.find(params[:id])
   @label = current_user.labels.find(params[:id])
  end

  def update
    #  @label = Label.find(params[:id])
   @label = current_user.labels.find(params[:id])

    if @label.update(label_params)
     redirect_to @label
    else
     render 'edit'
    end
  end

  def edit
    #  @label = Label.find(params[:id])
   @label = current_user.labels.find(params[:id])
  end

  def destroy
    #  @label = Label.find(params[:id])
    @label = current_user.labels.find(params[:id])
    @label.destroy
    redirect_to labels_path
  end


  def correct_user
    @label = current_user.labels.find_by(id: params[:id])
    redirect_to labels_path, notice: "Can't Change This!" if @label.nil?
  end

  private

  def label_params
   params.require(:label).permit(:label_name, :label_details, :user_id)
  end

end
