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

Returns:

    [
        {
        "id": 1,
        "name": "French Horn",
        "family": "Brass",
        "price": 12999.99
        },
        {
        "id": 2,
        "name": "Trumpet",
        "family": "Brass",
        "price": 999.99
        },
        {
        "id": 3,
        "name": "Trombone",
        "family": "Brass",
        "price": 1999.99
        },
        {
        "id": 4,
        "name": "Violin",
        "family": "String",
        "price": 99999.64
        }
    ]

**GET /api/v1/instruments/{id}** - Returns an instrument by ID

Returns:

    {
    "id": 1,
    "name": "French Horn",
    "family": "Brass",
    "price": 12999.99
    }

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
