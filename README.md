# Amplify Test - as local environment for Serverless AppSync 

## Initial reference:
https://aws.amazon.com/pt/blogs/mobile/amplify-framework-local-mocking/

## Goal
We have a project running with `serverless-appsync-plugin`, but it's a complete pain to develop within a team, and testing locally is... well, not supported.

Here, I'm trying to run our serverless stack using `amplify mock`.

Challenges:
- Use serverless within `backend` folder
- Reference local DB (Postgres) from `docker-compose.yml`
- Use external cognito for authentication/authorization

## What this repository accomplishes
- Runs AppSync with `amplify mock api`
  - with DynamoDB local (SQLiteDB)


## Usage
`yarn start:all`