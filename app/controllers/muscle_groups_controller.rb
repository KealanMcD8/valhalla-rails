class MuscleGroupsController < ApplicationController
  def index
    @muscle_groups = MuscleGroup.all
  end

  def new
    @muscle_group = MuscleGroup.new
  end

  def create
    @muscle_group = MuscleGroup.new(muscle_group_params)
    if @muscle_group.save
      redirect_to muscle_groups_path, notice: "Muscle group created successfully."
    else
      render :new
    end
  end

  def edit
    @muscle_group = MuscleGroup.find(params[:id])
  end

  def update
    @muscle_group = MuscleGroup.find(params[:id])
    if @muscle_group.update(muscle_group_params)
      redirect_to muscle_groups_path, notice: "Muscle group updated successfully."
    else
      render :edit
    end
  end

  def destroy
    @muscle_group = MuscleGroup.find(params[:id])

    if @muscle_group.destroy
      redirect_to muscle_groups_path, notice: "Muscle group deleted successfully."
    else
      redirect_to muscle_groups_path, alert: "Failed to delete muscle group."
    end
  end

  private

  def muscle_group_params
    params.require(:muscle_group).permit(:name, :description)
  end
end
