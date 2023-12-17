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

  describe 'GET /api/v1/hardwares/id' do
    it 'Consegue listar um hardware especifico e retornar status 200?' do
      get :show, params: {id: @hardware.id}
      expect(response.body).to include_json(part: 'fonte')
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /api/v1/hardwares' do
    it 'Consegue criar um hardware e retornar status 201?' do
      post :create, params: {hardware: {part: 'motherboard', function: 'integração de outras partes'}, format: :json}
      expect(response.body).to include_json(part: 'motherboard')
      expect(response).to have_http_status(201)
    end
  end

  describe 'PATCH /api/v1/hardwares/id' do
    it 'Consegue atualizar um hardware e retornar status 200?' do
      hardware = Hardware.last
      patch :update, params: {hardware: {part: 'cabo sata', function: 'interligar parts'}, id: hardware.id}
      expect(response.body).to include_json(part: 'cabo sata')
      expect(response).to have_http_status(200)
    end
  end

end