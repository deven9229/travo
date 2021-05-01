require 'rails_helper'

RSpec.describe "Guides", type: :request do

  let(:valid_attributes) do
  {
    'name' => 'Nate',
    'license_number' => '1202',
    'license_type' => 'option1'
  }
  end

  let(:invalid_attributes) do
    {
    'name' => 'a',
    'license_number' => '1',
    'license_type' => '1234'
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

  
  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Guide" do
        expect {
          guide = Guide.new(valid_attributes)
          guide.save
          post guides_url, params: { guide: valid_attributes }
        }.to change(Guide, :count).by(1)
      end

      it "redirects to the created guide" do
        post guides_url, params: { guide: valid_attributes }
        expect(response).to redirect_to(guide_url(Guide.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new " do
        expect {
          post guides_url, params: { guide: invalid_attributes }
        }.to change(Guide, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post guides_url, params: { article: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested guide" do
        guide = Guide.new(valid_attributes)
        guide.save
        patch guide_url(guide), params: { guide: new_attributes }
        article.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the article" do
        guide = Guide.new(valid_attributes)
        guide.save
        patch guide_url(guide), params: { guide: new_attributes }
        article.reload
        expect(response).to redirect_to(guide_url(guide))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        guide = Guide.create! valid_attributes
        patch guide_url(guide), params: { guide: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested guide" do
      guide = Guide.new(valid_attributes)
      guide.save
      expect {
        delete guide_url(guide)
      }.to change(Guide, :count).by(-1)
    end

    it "redirects to the articles list" do
      guide = Guide.new(valid_attributes)
      guide.save
      delete guide_url(guide)
      expect(response).to redirect_to(guides_url)
    end
  end

end
