require 'rails_helper'

RSpec.describe "Searches", type: :request do
  
  describe 'GET /new' do 
    xit 'returns a success response' do
      get new_search_path
      expect(response).to be_success
    end
  end 

end