require 'rails_helper'

RSpec.describe Hardware, type: :model do

  before{@hardware = Hardware.new}

  describe 'Testes de preenchimento do model Hardware' do

    it 'part consegue ser preenchido?' do
      @hardware.part = 'ssd'
      expect(@hardware.part).to eq('ssd')
    end

    it 'function consegue ser preenchido?' do
      @hardware.function = 'armazenamento de dados'
      expect(@hardware.function).to eq('armazenamento de dados')
    end

  end

  describe 'Testes de validação do model Hardware' do

    it 'hardware valido com campos obrigatorios preenchidos?' do
      @hardware.part = 'memória ram'
      @hardware.function = 'armazenamento temporario de dados'
      expect(@hardware).to be_valid
    end

  end

end