require 'rails_helper'

RSpec.describe Api::V1::HardwaresController, type: :controller do

  before{@hardware = Hardware.create(part: 'fonte', function: 'alimentação elétrica')}

  describe 'GET /api/v1/hardwares' do
    it 'Consegue listar todos os hardwares e retornar status 200?' do
      get :index
      expect(JSON.parse(response.body).size).to eq(1)
      expect(response).to have_http_status(200)
    end
  end

end