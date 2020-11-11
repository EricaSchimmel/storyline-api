# Storyline API

## Table of Contents
- [Storyline API](#storyline-api)
  - [Table of Contents](#table-of-contents)
  - [Technologies](#technologies)
  - [Installation](#installation)
  - [Setup](#setup)
  - [Running Tests](#running-tests)
  - [Status](#status)
  - [Contributing](#contributing)
  - [License](#license)

## Technologies
- [Rails 6](https://github.com/rails/rails)
- [PostgreSQL](https://github.com/ged/ruby-pg)
- [Devise](https://github.com/heartcombo/devise) - Authentication
- [RSpec Rails](https://github.com/rspec/rspec-rails) - Testing Framework
- [Versioncake](https://github.com/bwillis/versioncake) - API Versioning

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

## Contributing

## License
