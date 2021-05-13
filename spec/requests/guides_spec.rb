require 'rails_helper'

RSpec.describe "Guides", type: :request do

  let(:valid_attributes) do
  {
    'name' => 'Nate',
    'license_number' => '1202',
    'license_type' => 'option1'
  }
  end

  describe 'GET /index' do
    it 'returns a success response' do
      get guides_path
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'returns a success response' do
      guide = Guide.new(valid_attributes)
      guide.save
      get guide_path(guide)
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'returns a success response' do
      get new_guide_path
      expect(response).to be_successful
    end
  end

  describe 'GET /edit' do
    it 'returns a success response' do
      guide = Guide.new(valid_attributes)
      guide.save
      get edit_guide_path(guide)
      expect(response).to be_successful
    end
  end
end
