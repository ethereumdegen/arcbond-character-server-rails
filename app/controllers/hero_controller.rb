class HeroController < ApplicationController


  require 'securerandom'


  def create_hero

    new_uuid = SecureRandom.uuid

    @hero = Hero.build_new_hero
    @hero.save!

     render json: @hero.to_json #@hero.custom_uuid
  end




end
