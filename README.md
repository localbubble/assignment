# ecosia-assignment

## Setting up the project locally
I have used Express for the application and Jest and SuperTest for testing the application:

    npm install express
    npm install jest supertest --save-dev2

## process.env.PORT env variable for port assignment
to override the default port which is 3000 for this app, we could use `process.env.PORT` env variable.

## Pipeline Improvement Suggestion: 
The project is build twice in first two stages of the pipeline, we could reduce this to one by making use of the artifacts produced from the first stage, either by using caching or making sure the relevant artifacts created in the first stage are existing in the second stage.