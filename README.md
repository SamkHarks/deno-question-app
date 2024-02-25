# wsd-project

## Description of the app

This is a simple quiz app where you can answer questions created by other users. 
You can also create your own questions for other users.

## Running the app

The app can be run online or locally

### Online location of the app
App can be tested at online from the following link

### Running locally

#### First create database & database schemas 
For the project, use the following database schema:

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  email VARCHAR(255) UNIQUE,
  password CHAR(60)
);

CREATE TABLE questions (
  id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(id),
  title VARCHAR(256) NOT NULL,
  question_text TEXT NOT NULL
);

CREATE TABLE question_answer_options (
  id SERIAL PRIMARY KEY,
  question_id INTEGER REFERENCES questions(id),
  option_text TEXT NOT NULL,
  is_correct BOOLEAN DEFAULT false
);

CREATE TABLE question_answers (
  id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(id),
  question_id INTEGER REFERENCES questions(id),
  question_answer_option_id INTEGER REFERENCES question_answer_options(id),
  correct BOOLEAN DEFAULT false
);

CREATE UNIQUE INDEX ON users((lower(email)));

#### Configuration
Add your db configuration to database/database.js 

### Running app
Run from root folder:
deno run --allow-all --unstable run-locally.js

## Testing app
deno test --allow-all --unstable
