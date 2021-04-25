require 'rails_helper'

RSpec.describe "Guide", type: :model do

  describe 'validation tests' do
    it 'ensures name presense' do
      guide = Guide.new(license_number: "1234", license_type: "option1").save
      expect(guide).to eq(false)
    end

    it 'ensures license number presense' do
      guide = Guide.new(name: "Nate", license_type: "option1").save
      expect(guide).to eq(false)
    end

    it 'ensures license type presense' do
      guide = Guide.new(name: "Nate", license_number: "1234").save
      expect(guide).to eq(false)
    end

    it 'should save successfully' do
      guide = Guide.new(name: "Nate", license_number: "1234", license_type: "option1").save
      expect(guide).to eq(true)
    end
  end

end
