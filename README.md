# Storyline API

[![Ruby Style Guide](https://img.shields.io/badge/code_style-rubocop-brightgreen.svg)](https://github.com/rubocop-hq/rubocop)

## Table of Contents

- [Storyline API](#storyline-api)
  - [Table of Contents](#table-of-contents)
  - [Technologies](#technologies)
  - [Installation](#installation)
  - [Setup](#setup)
  - [Usage](#usage)
  - [Running Tests](#running-tests)
  - [Status](#status)
    - [To do](#to-do)
  - [Contributing](#contributing)
  - [License](#license)

## Technologies

- Ruby Version 2.6.6
- Rails 6
- [Devise](https://github.com/heartcombo/devise) - Authentication
- [Dotenv Rails](https://github.com/bkeepers/dotenv)
- [PostgreSQL](https://github.com/ged/ruby-pg)
- [Tiddle](https://github.com/adamniedzielski/tiddle) - Token Authentication
- [Versioncake](https://github.com/bwillis/versioncake) - API Versioning
- Testing:
  - [Database Cleaner](https://github.com/DatabaseCleaner/database_cleaner)
  - [Factory Bot Rails](https://github.com/thoughtbot/factory_bot_rails)
  - [Faker](https://github.com/faker-ruby/faker)
  - [RSpec Rails](https://github.com/rspec/rspec-rails)
  - [Shoulda Matchers](https://github.com/thoughtbot/shoulda-matchers)
  - [Spring-Commands-Rspec](https://github.com/jonleighton/spring-commands-rspec)

## Installation

To install the API fork or clone this repo.

## Setup

To run the project first migrate the database with the following:

```bash
rails db:migrate
```

And then start up a local server using:

```bash
rails s
```

## Usage

To start sending requests to the API locally be sure to have the Rails server running with:

```bash
rails s
```

Once the server is up and running you can begin to send requests to the API on port 3001.

Example request URL:

```
http://localhost:3001/api/v1/users/sign_in
```

## Running Tests

Storyline's API uses [RSpec](https://github.com/rspec/rspec-rails) for testing, and through the [spring-commands-rspec gem](https://github.com/jonleighton/spring-commands-rspec) uses [Spring](https://github.com/rails/spring) to run tests.

To run tests:

- All tests:
  ```bash
  bin/rspec
  ```
- All tests from a specific directory:
  ```bash
  bin/rspec spec/models
  ```
- A specific file:
  ```bash
  bin/rspec spec/models/user_spec.rb
  ```

## Status

This API is currently a work in progress and will continue to be updated as time goes on.

### To do

- Finish setup of [Tiddle](https://github.com/adamniedzielski/tiddle)
- Setup [Versioncake](https://github.com/bwillis/versioncake) for versioning
- User stories for content

## Contributing

## License
