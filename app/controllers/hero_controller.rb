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

    new_version_number = params[:version_number].to_i

     
    if(new_version_number < @hero.version_number )
      render json: [success:false, message: 'cannot decrement hero version']
    end

    @hero.version_number = new_version_number

    @hero.faction = params[:faction]

    quests = params[:quests]
    perks = params[:perks]
    spells = params[:spells]
    inventory_slots = params[:inventory_slots]
    stats = params[:stats]

    if(quests !=  nil && quests.length >= 1)
      @hero.quests.delete_all  #all children stay
      @hero.add_quests(quest_params)
    end

    if(perks !=  nil && perks.length >= 1)
      @hero.perks.delete_all  #all children stay
      @hero.add_perks(perk_params)
    end

    if(spells !=  nil && spells.length >= 1)
      @hero.spells.delete_all  #all children stay
      @hero.add_spells(spell_params)
    end

    if(inventory_slots !=  nil && inventory_slots.length >= 1)
      @hero.inventory_slots.delete_all  #all children stay
      @hero.add_inventory_slots(inventory_slot_params)
    end

    if(stats !=  nil && stats.length >= 1)
      @hero.stats.delete_all  #all children stay
      @hero.add_stats(stat_params)
    end

    @hero.save

    render json: [success:true, hero: @hero.get_all_hero_datasets.to_json]
  end

  def load_hero
    uuid = params[:uuid]

    @hero = Hero.find_by(custom_uuid:uuid)

    render json: @hero.get_all_hero_datasets.to_json
  end

  private

  def perk_params
    params.require(:perks).map do |p|
      p.permit(
        :name,
        :level
      )
    end
  end
  def quest_params
    params.require(:quests).map do |p|
      p.permit(
        :name,
        :progress
      )
    end
  end

  def spell_params
    params.require(:spells).map do |p|
      p.permit(
        :name,
        :learned
      )
    end
  end

  def inventory_slot_params
    params.require(:inventory_slots).map do |p|
      p.permit(
        :slot_id,
        :item_id,
        :item_name,
        :item_quantity
      )
    end
  end

  def stat_params
    params.require(:stats).map do |p|
      p.permit(
        :name,
        :amount
      )
    end
  end

end
