class PosesController < ApplicationController
  before_action :authenticate_user!, except: :index

  def new
  end

  def index
    @poses = Pose.all
  end

  def create
    @pose = Pose.create!(post_params.merge(user: current_user))
    flash[:notice] = "Pose created!";
    redirect_to poses_path 
  end

  private

    def post_params
      params.require(:pose).permit(:name, :description, :difficulty, :equipment_needed, :tips, :good_for)
    end
end
