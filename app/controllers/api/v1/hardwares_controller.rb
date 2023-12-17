class Api::V1::HardwaresController < ApplicationController

  # before_action :set_hardware, only: %i[] # show update destroy

  def index
    @hardwares = Hardware.all 
    render json: @hardwares
  end

private
def set_hardware
  @hardware = Hardware.find(params[:id])
end

def hardware_params
  params.require(:hardware).permit(:part, :function)
end

end