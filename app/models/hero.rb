class Hero < ApplicationRecord

  require 'securerandom'

  has_many :quests, primary_key: "custom_uuid", foreign_key: "hero_custom_uuid", class_name: "Quest"
  has_many :perks, primary_key: "custom_uuid", foreign_key: "hero_custom_uuid", class_name: "Perk"
  has_many :spells, primary_key: "custom_uuid", foreign_key: "hero_custom_uuid", class_name: "Spell"
  has_many :inventory_slots, primary_key: "custom_uuid", foreign_key: "hero_custom_uuid", class_name: "InventorySlot"
  has_many :stats, primary_key: "custom_uuid", foreign_key: "hero_custom_uuid", class_name: "Stat"


  enum faction: {
   nofaction: 0,
   elemental: 1,
   chaos: 2,
   arcane: 3,
   void: 4
 }


  def self.build_new_hero
    new_hero = Hero.new

    new_hero.custom_uuid = SecureRandom.uuid
    new_hero.faction = factions[:nofaction]



    return new_hero
  end


  def add_quests(array)
    array.each do |item|
      self.quests.build( item )
    end

    self.save
  end

  def add_perks(array)
    array.each do |item|
      self.perks.build( item )
    end

    self.save
  end

  def add_spells(array)
    array.each do |item|
      self.spells.build( item )
    end

    self.save
  end

  def add_inventory_slots(array)
    array.each do |item|
      self.inventory_slots.build( item )
    end

    self.save
  end

  def add_stats(array)
    array.each do |item|
      if(Stat.stat_name_permitted?(item[:name]))
        self.stats.build( item )
      else
        p 'stat ' + item[:name] + ' not permitted!'
      end
    end

    self.save
  end

  #used for loading
  def get_all_hero_datasets
    result = {custom_uuid: self.custom_uuid}

    result[:faction] = self.faction
    result[:version_number] = self.version_number

    result[:quests] = []
    self.quests.each do |item|
      result[:quests] << item.get_json
    end

    result[:perks] = []
    self.perks.each do |item|
      result[:perks] << item.get_json
    end

    result[:spells] = []
    self.spells.each do |item|
      result[:spells] << item.get_json
    end

    result[:inventory_slots] = []
    self.inventory_slots.each do |item|
      result[:inventory_slots] << item.get_json
    end

    result[:stats] = []
    self.stats.each do |item|
      result[:stats] << item.get_json
    end

    return result
  end




end
