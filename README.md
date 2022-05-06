# Under One Roof (Ruby on Rails)

The Under One Roof app was created to provide roommates with the ability to share a single location to track shared calendars, expenses, and events for their shared home. 

## Installation
To install the Under One Roof application, a user will need to clone down the repository and install all of the required packages. To do this, first ensure that you are using the correct version of the main tools:

- Node: 16.5.1
- Ruby: 3.1.1
- Gem: 3.3.7
- Bundler: 2.3.7

Once you have installed the prerequisite tooling, ensure that the production environment pg gem is commented out in the gemfile in row 73. Next, run the bundler to install the gemfile for the application by running:

`bundle install`

After installing the gemfile, create and migrate the databases for the application by running: 

`rake db:create`

`rake db:migrate`

Once the databases have been created, the application should be ready to run in development.

##