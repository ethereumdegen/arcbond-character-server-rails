# README

This is designed to run on locally on the game server.  


sudo -i -u postgres;
create role dev with createdb login password 'password';
CREATE DATABASE spellhack_heroes_dev OWNER dev;
CREATE DATABASE spellhack_heroes_test OWNER dev;

##### webpack
