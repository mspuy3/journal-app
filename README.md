# Tasks by MU

A simple Tasks🗒️ recording app with Labels🏷️ available.

## [See it deployed in Heroku!](https://task-mu-33.herokuapp.com/)

## Features
- Create and use an account that keeps its own Tasks🗒️ and Labels🏷️ private to the signed in user,
- See all Tasks due today, all tasks, all labels, indiviudal tasks, and individual labels.
- Create Tasks🗒️ with optional rich-text details, deadline, and labels🏷️.
- Create and use multiple Labels🏷️ for Tasks🗒️.
- Toggle Tasks🗒️ to done😁 or not yet done🤡.
- Filter Tasks🗒️ by Labels🏷️.

## Requirements
- Ruby 3.0.2
- Rails 6.1.4
- devise for Rails
- action_text for Rails
- yarn or npm
- Bootstrap 5.1.3
- @popperjs/core 2.11.2


## ERD








# Avion School Details
### For this project, 'categories' was renamed to 'label'
- [X] As a User, I want to create a category that can be used to organize my tasks.
- [X] As a User, I want to edit a category to update the category's details.
- [X] As A User, I want to view a category to show the category's details.
- [X] As a User, I want to create a task for a specific category so that I can organize tasks quicker
- [X] As a User, I want to edit a task to update task's details
- [X] As a User, I want to view a task to show task's details
- [X] As a User, I want to delete a task to lessen my unnecessary daily tasks
- [X] As a User, I want to view my tasks for today for me to remind what are my priorities for today
- [X] As a User, I want to create my account so that I can have my own credentials
- [X] As s User, I want to login my account so that I can access my account and link my own tasks.

## Other Details
- [-] Use TDD for this project
- [X] Deployed App to Heroku

## Deadline
- 19 February 2022

## Other Features
- Many-to-Many association between 'tasks' and 'categories'
- Bootstrap styling

## Known Bugs
- Can set deadline to past
- Cannot delete User if it still has a task with category

