class Api::V1::HardwaresController < ApplicationController

  before_action :set_hardware, only: %i[show update] # show update destroy

  def index
    @hardwares = Hardware.all 
    render json: @hardwares
  end

  def show
    render json: @hardware
  end

  def create
    @hardware = Hardware.new(hardware_params)
    if @hardware.save
      render json: @hardware, status: :created, location: api_v1_hardware_url(@hardware)
    else
      render json: @hardware.errors, status: :unprocessable_entity
    end
  end

  def update
    if @hardware.update(hardware_params)
      render json: @hardware
    else
      render json: @hardware.errors, status: :unprocessable_entity
    end
  end

private
def set_hardware
  @hardware = Hardware.find(params[:id])
end

def hardware_params
  params.require(:hardware).permit(:part, :function)
end

end