require "rails_helper"
RSpec.describe HeroController do
  render_views

  describe "HeroesAPI" do



    it "create hero" do
    #  newhero = Hero.create
      #result = controller.create_hero
      get :create_hero

      newhero = Hero.last
      expect(newhero.custom_uuid).to be_truthy
    end


  end
end
