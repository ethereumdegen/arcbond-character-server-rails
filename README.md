# README

This is designed to run on locally on the game server.  This is a simple POSTGRESQL database wrapper API that allows a game server to save and load player data based on UUIDs.  


## Ruby On Rails Required
This is a standard Ruby On Rails 5 project and so it requires Ruby and Ruby On Rails version 5 to run: https://rubyonrails.org/

## Create the database tables (after installing POSTGRESQL)

sudo -i -u postgres;

create role dev with createdb login password 'password';

CREATE DATABASE spellhack_heroes_dev OWNER dev;

CREATE DATABASE spellhack_heroes_test OWNER dev;


## How It Works

See the /Config/Routes file for the POST requests that can be sent.

1. /hero/create will request the process to create a new Hero record and return the UUID for the hero

2. /hero/save accepts many parameters (the UUID, the version number, arrays of quests, perks, stats, and more) and saves all of that data to the SQL database properly

3. /hero/load accepts only a hero UUID as a parameter and returns JSON of all of the hero data from the last time the hero was 'saved'


##### Running tests
rake spec
