# Menus IG2I

## Installation

### Requirements

- Ruby 2.4.1
- Docker & Docker Compose

### Getting started

- Clone this repo
- Start database: `docker-compose up`
- Setup your environment by copying `.env.example` into `.env`
- Install gems: `bundle install`
- Start migrations: `bundle exec rake db:migrate`
- Start server: `rails s`
