require 'rails_helper'

RSpec.describe "Search", type: :model do
  describe "#search_guides" do 
      xit 'returns search results' do
        search = Search.new(name: '', gender: '')
        expect(search).to_not be_valid
        search.name = "Nate"
        search.gender = "Male"
        expect(search).to be_valid
      end
  end
end