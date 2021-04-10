# frozen_string_literal: true

require 'rails_helper'

describe '四則演算でRSPECの稼働テスト' do
  context '1+1=2で稼働テスト' do
    it '1+1=2' do
      expect(1 + 1).to eq(2)
    end
  end
end