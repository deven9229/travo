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

  describe '.search' do 
    before do
       @guide1 = Guide.create!(name: 'Deven', gender: 'Male', license_number: '1234', license_type: 'option1')
       @guide2 = Guide.create!(name: 'Jorge', gender: 'Male', license_number: '1234', license_type: 'option1')
       @guide3 = Guide.create!(name: 'Emily', gender: 'Female', license_number: '1234', license_type: 'option1')
    end 

    it 'returns the search results matching both name and gender if both are provided' do 
      results = Guide.search({name: 'Deven', gender: 'Male'})
      expect(results).to eq([@guide1])
    end

    it 'returns the search results matching name' do 
      results = Guide.search({name: 'Jorge'})
      expect(results).to eq([@guide2])
    end

    it 'returns the search results matching gender' do 
      results = Guide.search({gender: 'Female'})
      expect(results).to eq([@guide3])
    end

    it 'returns the search results matching by word' do 
      results = Guide.search({name: 'd'})
      expect(results).to eq([@guide1])
    end

    it 'returns all search results if search are inputs blank' do 
      results = Guide.search({name: '', gender: ''})
      expect(results).to eq([@guide1, @guide2, @guide3])
    end 
  end

end
