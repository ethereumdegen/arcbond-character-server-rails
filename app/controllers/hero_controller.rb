class HeroController < ApplicationController


  require 'securerandom'

  HERO_VERSION_NUMBER = 101


  def create_hero

    new_uuid = SecureRandom.uuid

    @hero = Hero.build_new_hero
    @hero.version_number = HERO_VERSION_NUMBER  #this version number
    @hero.save!

     render json: {success:true, hero: @hero} #@hero.hero_uuid
  end

  def save_hero
    uuid = params[:hero_data][:hero_uuid]
    @hero = Hero.find_by(hero_uuid:uuid)

    #new_version_number = params[:version_number].to_i


    #if(new_version_number < @hero.version_number )
    #  render json: {success:false, message: 'cannot decrement hero version'}
    #end

    #@hero.version_number = new_version_number

    #@hero.faction = params[:faction]

    @hero.jsonblob = params[:hero_data]


    @hero.save

    #p 'saved hero'
    #p @hero

    render json: {success:true, hero: @hero.jsonblob}
  end

  def load_hero
    uuid = params[:hero_uuid]

    @hero = Hero.find_by(hero_uuid:uuid)

    if @hero
      render json: {success:true, hero: @hero.jsonblob}
    else
      render json: {success:false}
    end

  end




end
