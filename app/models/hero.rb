class Hero < ApplicationRecord

  require 'securerandom'

  has_many :quests
  has_many :perks
  has_many :spells
  has_many :inventory_slots


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
    new_hero.faction = factions[:none]



    return new_hero
  end


  def add_quests(array)
  end

  def add_perks(array)
  end

  def add_spells(array)
  end

  #used for loading
  def get_all_hero_datasets
    result = {custom_uuid: self.custom_uuid}

    result.quests = []

    result.perks = []

    result.spells = []


    return result
  end

end
