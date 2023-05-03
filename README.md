
## Requirement

Create an application that allows for the creation and management of schools, courses, batches, and students by various user types including Admin, School Admin, and Student. With different user types and their respective capabilities, the application offers a flexible and secure platform for educational organisations.

## Setup
- Step 1: `cd apollo && bundle install`
- Step 2: `rails db:setup && rails db:migrate && rails db:seed`
- Step 3: `rails s`


## Available Users

- Super Admin: `superadmin@test.com` pass: `apple123`
- School Admin: `schooladmin@test.com` pass: `apple123`
- Student: `student@test.com` pass: `apple123`

## Libraries used
1. CanCanCan for authorization
2. Devise for authentication
3. Bootstrap 5 for views
4. RSpec for tests

## Possible Improvements

Following are possible future improvements to the proposed application:

1. Add API capability (did not work on due to time constraint)
2. Add More tests (limited tests due to time constraint)
3. View partials can be optimised
4. Nested forms can be handled better
5. Domain models can have additional attributes
6. Should use enum for roles instead of string
7. use more bootstrap components in forms
