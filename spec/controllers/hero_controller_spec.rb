require "rails_helper"

require 'json'

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
      sample_inventory_array = [{name: 'sampleinventory', slot_id: 1, item_id: 1, item_name: 'test' }]
      sample_stash_array = [{name: 'samplestash', slot_id: 1, item_id: 1 }]
      sample_stat_array = [{name: 'Gold', amount:99 }]
      sample_ability_bar_config_array = [{slot_id: 2, ability_name: 'tempest' }]
      sample_custom_tag_array = [{name: 'beacon', value:'necro' }]

      post :save_hero, :params => {hero_uuid: newhero.hero_uuid,
                                  version_number: 111,
                                  faction: 'elemental',
                                  quests: sample_quest_array,
                                  perks: sample_perk_array,
                                  spells: sample_spell_array,
                                  inventory_slots: sample_inventory_array,
                                  stats: sample_stat_array,
                                  ability_bar_configs: sample_ability_bar_config_array  ,
                                  custom_tags: sample_custom_tag_array
                                }



      res = JSON.parse( response.body )
      p res

      expect(res["success"]).to be_truthy


      post :load_hero, :params => {hero_uuid: newhero.hero_uuid}

      p 'load response:'
      res2 = JSON.parse( response.body )
      p res2

      expect(res2["success"]).to be_truthy


    end


  end
end
