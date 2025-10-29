#!/bin/bash

composer require phpstan/phpstan --dev
composer require larastan/larastan --dev


creer en suite le fichier de configuration 

touch phpstan.neon

---------contenue de neon-------------------
includes:
    - vendor/larastan/larastan/extension.neon

parameters:
    paths:
        - app/
    level: max


./vendor/bin/phpstan analyse    
./vendor/bin/phpunit    


-----------------------
# Create workflow file

mkdir -p .github/workflows && touch .github/workflows/main.yml


--------------------
créer un ficher d'environnement


