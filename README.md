![](https://img.shields.io/badge/Ali-Atayee-yellow?labelColor=black)

# ALFA BUDGET App

> The Budget app is about building a mobile web application where you can manage your budget: you have a list of transactions associated with a category, so that you can see how much money you spent and on what.

## Major Technologies
- [ ] Ruby on Rails
- [ ] Postgresql
- [ ] TailwindCSS

### [Video Presentation Link](https://www.loom.com/share/027dc24ffb754aab86db457fddc06530)
### Install & Setup

To setup and install this sample AlFa Blog project, follow the below steps:
- Clone this project by the command: 
  ```
  git clone https://github.com/aliatayee/alfa-budget-app
  ```

- Then switch to the project folder by the bellow query:

  ```
  cd alfa-budget-app
  ```

- Install the required dependecies with:
  ```
  bundle install
  ```
- Install npm dependencies with: 
  ```
  npm install
  ```
- Before running below commands update [config/database.yml](./config/database.yml) with your local `DB`credentials. Then run:
    ```
    rake db:create
    ```
    ```
    rake db:migrate
    ```
- To make the tailwindcss works run the below command:
    ```
    bundle exec rake assets:precompile
    ```

- With Ruby on Rails and PostgreSQL installed in your environment, you can run `rails server` to run the website.
### Tests

- Run `bundle install`
- Run `bundle exec rspec spec`

### Prerequisites

- IDE to edit and run the code (We use Visual Studio Code 🔥).
- Git to versionning your work.
- Postgresql

### Authors
👤 **Ali**

- GitHub: [@aliatayee](https://github.com/aliatayee)
- Twitter: [@aqaatayee](https://twitter.com/aqaatayee)
- LinkedIn: [@aliatayee](https://www.linkedin.com/in/aliatayee/)

## 🤝 Contributing
Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support
Give a ⭐️ if you like this project!

## Acknowledgments
- Original Design [Gregoire Vella on Behance](https://www.behance.net/gregoirevella).
- Hat tip to anyone whose code was used
- Inspiration
- etc

##  Credits
The Original Design By: [Gregoire Vella on Behance](https://www.behance.net/gregoirevella).
