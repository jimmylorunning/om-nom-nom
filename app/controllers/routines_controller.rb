class RoutinesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :create]

  def new
    @poses = Pose.all
  end

  def index
    @routines = Routine.all
  end

  def show
    @routine = Routine.find(params[:id])
  end

  def edit
  end

  def create
    @routine = Routine.create!(post_params.merge(user: current_user))
    flash[:notice] = "Routine created!"
    redirect_to routines_path
  end

  private

    def post_params
      params.require(:routine).permit(:name)
    end
end
