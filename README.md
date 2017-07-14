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
3. Run $ rake db:create and $ rake db:migrate to initialize the database.
4. Run $ rake db:seed to populate the database with faker data.
5. Run $ rails server to start the app and navigate toe localhost:3000 in a browser.
6. Create an account to navigate user features or sign into 'admin@admin.com'///123456 to navigate admin features.

## Technologies Used
* HTML/CSS
* Bootstrap
* Ruby
* Rails
* PostgreSQL

## Known Bugs
* Spec tests accounting for deleting products is failing, capybara won't select the correct option from the alert confirmation.

## Future Updates
* Add categories navigation to drop down in the navbar.
* Convert categories and products into a many-to-many association.
* Add additional user functionality, sales, favorites list, etc.

### License
MIT
