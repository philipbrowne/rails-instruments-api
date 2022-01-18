# Rails Instruments API

Example of a basic REST API with Musical Instruments that runs CRUD functions.

## Local Deployment

INSTALL DEPENDENCIES

`bundle install`

RUN MIGRATION

`rails db:migrate`

RUN SERVER

`rails s`

## Deployment

Project Deployed at https://rails-isntruments.herokuapp.com

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
