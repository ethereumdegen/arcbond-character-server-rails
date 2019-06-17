class HeroController < ApplicationController


  require 'securerandom'


  def create_hero

    new_uuid = SecureRandom.uuid

    @hero = Hero.build_new_hero
    @hero.save!

     render json: {success:true, hero: @hero} #@hero.hero_uuid
  end

  def save_hero
    uuid = params[:hero_uuid]
    @hero = Hero.find_by(hero_uuid:uuid)

    new_version_number = params[:version_number].to_i


    if(new_version_number < @hero.version_number )
      render json: {success:false, message: 'cannot decrement hero version'}
    end

    @hero.version_number = new_version_number

    @hero.faction = params[:faction]

    quests = params[:quests]
    perks = params[:perks]
    spells = params[:spells]
    inventory_slots = params[:inventory_slots]
    equipment_slots = params[:equipment_slots]
    stats = params[:stats]

    if(quests !=  nil && quests.length >= 1)
      @hero.quests.destroy_all  #all children stay
      @hero.add_quests(quest_params)
    end

    if(perks !=  nil && perks.length >= 1)
      @hero.perks.destroy_all  #all children stay
      @hero.add_perks(perk_params)
    end

    if(spells !=  nil && spells.length >= 1)
      @hero.spells.destroy_all  #all children stay
      @hero.add_spells(spell_params)
    end

    if(inventory_slots !=  nil && inventory_slots.length >= 1)
      @hero.inventory_slots.destroy_all  #all children stay
      @hero.add_inventory_slots(inventory_slot_params)
    end

    if(equipment_slots !=  nil && equipment_slots.length >= 1)
      @hero.equipment_slots.destroy_all  #all children stay
      @hero.add_equipment_slots(equipment_slot_params)
    end

    if(stats !=  nil && stats.length >= 1)
      @hero.stats.destroy_all  #all children stay
      @hero.add_stats(stat_params)
    end

    @hero.save

    render json: {success:true, hero: @hero.get_all_hero_datasets}
  end

  def load_hero
    uuid = params[:hero_uuid]

    @hero = Hero.find_by(hero_uuid:uuid)

    if @hero
      render json: {success:true, hero: @hero.get_all_hero_datasets}
    else
      render json: {success:false}
    end

  end

  def index
     render json: 'hello world '
  end

  private

  def perk_params
    params.require(:perks).map do |p|
      p.permit(
        :name,
        :level,
        :slot_id
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
        :learned,
        :slot_id
      )
    end
  end

  def inventory_slot_params
    params.require(:inventory_slots).map do |p|
      p.permit(
        :slot_id,
        :item_id,
        :name,
        :quantity
      )
    end
  end

  def equipment_slot_params
    params.require(:equipment_slots).map do |p|
      p.permit(
        :slot_id,
        :item_id,
        :name,
        :quantity
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
