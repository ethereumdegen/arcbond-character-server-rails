class HeroController < ApplicationController


  require 'securerandom'


  def create_hero

    new_uuid = SecureRandom.uuid

    @hero = Hero.build_new_hero
    @hero.save!

     render json: @hero.to_json #@hero.custom_uuid
  end

  def save_hero
    uuid = params[:uuid]
    @hero = Hero.find_by(custom_uuid:uuid)

    quests = params[:quests]
    perks = params[:perks]
    spells = params[:spells]

    if(quests !=  nil && quests.length >= 1)
      @hero.quests.delete_all  #all children stay
      @hero.add_quests(quests)
    end

    if(perks !=  nil && perks.length >= 1)
      @hero.perks.delete_all  #all children stay
      @hero.add_perks(perks)
    end

    if(spells !=  nil && spells.length >= 1)
      @hero.spells.delete_all  #all children stay
      @hero.add_spells(spells)
    end


    render json: @hero.get_all_hero_datasets.to_json
  end

  def load_hero
    uuid = params[:uuid]

    @hero = Hero.find_by(custom_uuid:uuid)

    render json: @hero.get_all_hero_datasets.to_json
  end


end
