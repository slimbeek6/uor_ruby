# Under One Roof (Ruby on Rails)

The Under One Roof app was created to provide roommates with the ability to share a single location to track shared calendars, expenses, and events for their shared home.

This version of the application was created using Ruby on Rails, after the initial version of the application was created utilizing a React and Sequelize framework. The original version of the application was created as a project for the UC Berkeley coding bootcamp, and I created this version as a way to test my knowledge after learning Ruby on Rails after the course.

The main feature that the Ruby on Rails version of this application provides is the authentication services run via Devise. In our original version, there was always a struggle to properly authenticate and assign users and data to a specific home. With the Devise authentication, I was able to create a more seamless sign-up and login process.

[Deployed Site](https://uor-ruby.herokuapp.com/)

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

## Future Development
In the future, the goal will be to improve the visuals of the application, as this version was initially created to test my ability to build the functionality of the application more than creating an immediately deliverable project.  To this point, the main areas that I would like to improve going forward are:

- Styling of the pages to align more closely with the original version, where one of my teammates did a phenomenal job making the application clean and professional looking.

- Improvements to the calendar portions of the application, as the Simple_Calendar plugin used in the Ruby version is not as clean and functional as the original version created using DayJS.

- Improving the initial home setup via an extra page that only loads at the time of registration.

## Authors
Ruby on Rails version:
- Shaun Limbeek
    - [GitHub](https://github.com/slimbeek6)
    - [LinkedIn](https://www.linkedin.com/in/shaun-limbeek/)

Original version:

- Ryan Kirkland
    - [GitHub](https://github.com/RyanKirkland86)
    - [LinkedIn](https://www.linkedin.com/in/ryan-kirkland-619942200/)
- Jordan Kelly
    - [GitHub](https://github.com/profjjk)
    - [LinkedIn](https://www.linkedin.com/in/the-real-jordan-kelly/)
- Shaun Limbeek
    - [GitHub](https://github.com/slimbeek6)
    - [LinkedIn](https://www.linkedin.com/in/shaun-limbeek/)

## License

This Project is licensed under the MIT License.
<br>
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## Acknowledgements

A special thanks to our instructors Jerome, Mahi, and Manuel for all of your help and support. You guys are the best!
- [UC Berkeley](https://bootcamp.berkeley.edu/coding/)