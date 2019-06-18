require "rails_helper"
RSpec.describe HeroController do
  render_views

  describe "HeroesAPI" do



    it "create hero" do
    #  newhero = Hero.create
      #result = controller.create_hero
      post :create_hero

      newhero = Hero.last
      expect(newhero.hero_uuid).to be_truthy
    end

    it "load hero" do
       post :create_hero
       newhero = Hero.last
      #result = controller.create_hero
      post :load_hero, :params => {uuid: newhero.hero_uuid}

      p response.body
      expect(response).to be_truthy


    end

    it "save hero" do
      post :create_hero
      newhero = Hero.last

      sample_quest_array = [{name: 'startedquest', progress: 1},{name: 'finishedquest', progress: 2}]
      sample_perk_array = [{name: 'sampleperk', level: 1, slot_id: 1 }]
      sample_spell_array = [{name: 'samplespell', learned: true, slot_id: 1 }]
      sample_inventory_array = [{name: 'sampleinventory', slot_id: 1, item_id: 1, name: 'firstitem'}]
      sample_stat_array = [{name: 'gold', amount:99 }]

      post :save_hero, :params => {hero_uuid: newhero.hero_uuid,
                                  version_number: 111,
                                  faction: 'elemental',
                                  quests: sample_quest_array,
                                  perks: sample_perk_array,
                                  spells: sample_spell_array,
                                  inventory_slots: sample_inventory_array,
                                  stats: sample_stat_array
                                }

      post :load_hero, :params => {uuid: newhero.hero_uuid}

      p 'load response:'
      p response.body
      expect(response).to be_truthy


    end


  end
end
