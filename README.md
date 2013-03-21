Generic Heroku App
==================

Generic Heroku App is a quick-start app ready for deployment to Heroku. It is set up to include:

- Devise for user authentication
- CanCan for user authorisation
- Rails Admin, limited to admin users
- SendGrid for mailing, with pre-built AdminMailer and UserMailer models.
- Twitter Bootstrap for styling
- JQuery-UI for added styling
- Haml
- RSpec
- Capybara

The project is still in early phases, and feedback and submissions are welcome.

Setup:
------

To set up a new application:

- Make a copy of the code folder.
- In the new copy, run `rake 'setup[app_name]'` where `app_name` is a uniqe application name that does not yet exist on Heroku.

This will initiate a new git repo, Heroku application, deploy to Heroku, and open your new Heroku deployment in the browser.

Details to change in the new app:

- Change the database names in 'config/database.yml'
- Change the 'from' and 'admin' email addresses in 'app/mailers/admin_mailer.rb'

Notes:
------
- The first user to register will be made an admin. All registrations thereafter will not be admins.

How To:
-------
### Send daily email:

### Create admin users
    
To Do
-----

Wishlist:
