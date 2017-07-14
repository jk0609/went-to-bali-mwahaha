# E-Commerce and AJAX (Week 3 Rails Project)

#### By Jonathon Kang

## Description

Refactoring of existing e-commerce codebase with minimal commit history. Main goal is to add AJAX and a set of additional features for a general refactor of the site.

## Prerequisites
* Rails
* Devise gem
* PostgreSQL

## Setup/Installation Requirements
1. Clone the directory to your local machine and navigate to project root directory.
2. Run $ bundle to install necessary gems.
3. Run $ rake db:create and $ rake db:migrate to initialize the database. Run $ rails db:migrate RAILS_ENV=test to enable rspec tests.
4. Run $ rake db:seed to populate the database with faker data.
5. Run $ rails server to start the app and navigate toe localhost:3000 in a browser.
6. Create an account to navigate user features or sign into 'admin@admin.com'///123456 to navigate admin features.

## Technologies Used
* HTML/CSS
* Materialize
* Ruby
* Rails
* PostgreSQL

## Known Issues
* Cart treats the same item added twice as separate instances, should update the total of the existing cart items.
* CRUD test for products and users need JS enabled.

## Refactoring
* Users can no longer order 0 or negative quantities of an item.
* Flash messages added for user sign in, sign out and sign up actions.
* CRUD functionality added for products if signed in as an admin.
* Flash messages added for admin product CRUD actions.
* 

### License
MIT
