require 'rails_helper'

RSpec.describe 'Guides features' do 
  describe 'viewing the index' do 
    it 'lists all of the guides' do 
      # 1. create your test data
      Guide.create!(name: "Nate", license_number: "1234", license_type: "option1")

      # 2. interact with the app
      visit('/')
      click_link('Guides')

      # 3. expect something to happen 
      expect(page).to have_content('Nate')
    end
  end
end