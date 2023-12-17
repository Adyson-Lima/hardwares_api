require 'rails_helper'

RSpec.describe Hardware, type: :model do

  before{@hardware = Hardware.new}

  describe 'Testes de preenchimento do model Hardware' do

    it 'part consegue ser preenchido?' do
      @hardware.part = 'ssd'
      expect(@hardware.part).to eq('ssd')
    end

    it 'function consegue ser preenchido?' do
      @hardware.function = ''
      expect(@hardware.function).to eq('armazenamento de dados')
    end

  end

end