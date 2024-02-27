# wsd-project


# Deno Question App

## Description

Deno Question App is a multi-page application (MPA) built with Deno, allowing users to register, login, and participate in a Q&A community. Users can create questions, answer questions posted by others, and view various statistics. The application uses a PostgreSQL database for data storage.


## Online location of the app
App can be tested at online from the following link: https://deno-question-app.onrender.com

## Features

- User registration and login system.
- Ability for users to post and answer questions.
- A statistics page showcasing:
  - Users with the most answers.
  - Individual user statistics.
  - Overview of correct and incorrect answers.
  - Number of times a user's questions have been answered.
- Data persistence with PostgreSQL.

## Dependencies

The project uses several Deno modules:

- `eta` for template rendering.
- `oak` as the web framework.
- `postgres` for database interactions.
- `sessions` for session management.
- `bcrypt` for password hashing.
- `validasaur` for data validation.
- `std` and `superoak` for testing.

## Installation

1. Ensure you have [Deno](https://deno.land/) installed on your system.
2. Clone the repository to your local machine.
3. Navigate to the project directory.
4. Run `deno cache --unstable deps.js` to cache the dependencies.

## Running the Application

1. To start the server, run:
   ```
   deno run --allow-net --unstable --allow-read --allow-env run-locally.js
   ```
2. Access the application through `http://localhost:10000` in your browser.

## Configuration

- Ensure PostgreSQL is set up and configured correctly.
- Modify the `.env` file (if present) to match your database and environment settings.
  
## Testing app
deno test --allow-all --unstable
