class EquipmentsController < ApplicationController
  def index
    @equipment = Equipment.all
  end

  def new
    @equipment = Equipment.new
  end

  def create
    @equipment = Equipment.new(equipment_params)
    if @equipment.save
      redirect_to equipments_path, notice: "Equipment created successfully."
    else
      render :new
    end
  end

  def show
    @equipment = Equipment.find(params[:id])
  end

  def destroy
    @equipment = Equipment.find(params[:id])
    if @equipment.destroy!
      redirect_to equipments_path, notice: "Equipment deleted successfully."
    else
      redirect_to equipments_path, alert: "Failed to delete equipment."
    end
  end

  private

  def equipment_params
    params.require(:equipment).permit(:name, :description, :image_url)
  end
end
