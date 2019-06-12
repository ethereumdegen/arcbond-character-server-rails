# README

This is designed to run on locally on the game server.  This is a simple POSTGRESQL database wrapper API that allows a game server to save and load player data based on UUIDs.  


## Ruby On Rails Required
This is a standard Ruby On Rails 5 project and so it requires Ruby and Ruby On Rails version 5 to run: https://rubyonrails.org/

## Create the database tables (after installing POSTGRESQL)

sudo -i -u postgres;

create role dev with createdb login password 'password';

CREATE DATABASE spellhack_heroes_dev OWNER dev;

CREATE DATABASE spellhack_heroes_test OWNER dev;



##### Running tests
rake test
