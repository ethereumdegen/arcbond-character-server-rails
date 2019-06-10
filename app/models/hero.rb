class Hero < ApplicationRecord


  belongs_to :faction
  has_many :quests
  has_many :perks
  has_many :spells
  has_many :inventory_slots

  belongs_to :latest_hero_session, :class_name => "HeroSession"


end
