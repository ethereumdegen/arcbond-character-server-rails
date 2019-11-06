class Hero < ApplicationRecord

  require 'securerandom'



  enum faction: {
   nofaction: 0,
   elemental: 1,
   chaos: 2,
   arcane: 3,
   void: 4
 }


  def self.build_new_hero
    new_hero = Hero.new

    new_hero.hero_uuid = SecureRandom.uuid
    new_hero.faction = factions[:nofaction]



    return new_hero
  end





end
