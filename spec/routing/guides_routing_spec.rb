require "rails_helper" 

RSpec.describe GuidesController, type: :routing do 
  describe "routing" do
    it "routing to #index"  do 
      expect(get: "/guides").to route_to("guides#index")
    end

    it "routing to #new"  do 
      expect(get: "/guides/new").to route_to("guides#new")
    end 

    it "routing to #show"  do 
      expect(get: "/guides/1").to route_to("guides#show", id: "1")
    end

    it "routing to #edit"  do 
      expect(get: "/guides/1/edit").to route_to("guides#edit", id: "1")
    end

    it "routing to #create"  do 
      expect(post: "/guides").to route_to("guides#create")
    end

    it "routing to #update via PUT" do 
      expect(put: "/guides/1").to route_to("guides#update", id: "1")
    end

    it "routing to #update via PATCH" do 
      expect(patch: "/guides/1").to route_to("guides#update", id: "1")
    end
    
    it "routing to #destory" do 
      expect(delete: "/guides/1").to route_to("guides#destroy", id: "1")
    end
  end    
end