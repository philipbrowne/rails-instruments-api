# Rails Instruments API

Example of a basic REST API with Musical Instruments that runs CRUD functions.

## Local Deployment with Ruby on Rails

INSTALL DEPENDENCIES

`bundle install`

RUN MIGRATION

`rails db:migrate`

RUN SEED

`rails db:seed`

RUN SERVER

`rails server`

## Deployment

Project Deployed at https://rails-instruments.herokuapp.com

## Routes

**GET /api/v1/instruments** - Returns a list of all instruments

**GET /api/v1/instruments/{id}** - Returns an instrument by ID

**POST /api/v1/instruments** - Create a new instrument

Example Request Body:

    {
        "name" : "Tuba,
        "family" : "Brass",
        "price" : 3496.43
    }

**PUT /api/v1/instruments/{id}** - Updates an existing instrument by Id

Example Request Body:

    {
        "name" : "Tuba,
        "family" : "Brass",
        "price" : 9943.43
    }

**DELETE /api/v1/instruments/{id}** - Deletes an existing instrument
