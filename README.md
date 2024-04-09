# GainLog
This is a personal fitness log / workout log. After growing tired of apps having paywalls for either how many workouts a user is allowed to create or how many different exercises they are allowed to use in their "unlimited" amount of workouts, I decided to make my own.

#### Current Features
* Add your own exercises
* Create workouts using any and all exercises that you added
* Edit the sets for your workouts to show the amount of reps and how much weight you pushed/pulled

## Requirements
* Ruby on Rails
* Postgres16

## Local Installation

* Clone this repo
* Create a .env file using the .env.sample file provided
* run `bin/bundle install`
* run `rails db:migrate`
* run `rails assets:precompile`
* run `rails s` (or deploy locally however you see fit)
