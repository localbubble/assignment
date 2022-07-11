# ecosia-assignment

## Setting up the project locally
I have used Express for the application and Jest and SuperTest for testing the application:

    npm install express
    npm install jest supertest --save-dev2

## process.env.PORT env variable for port assignment
to override the default port which is 3000 for this app, we could use `process.env.PORT` env variable.

## Pipeline Improvement Suggestions: 
### Refine Build
The project is build twice in first two stages of the pipeline, we could reduce this to one by making use of the artifacts produced from the first stage, either by using caching or making sure the relevant artifacts created in the first stage are existing in the second stage.

### pipeline images
As pipeline images, I've used ubuntu-latest for this project, however this is not a recommended approach in a production grade pipeline. In a production grade pipeline, I would have used fine grained images for each of the pipeline stages. A minimal node image for the build and test stage and another minimal docker image for the docker build and publish stage. These images would have been customized with the relevant configurations for tools like npm, docker and kubernetes; this way we could abstract the initial configuration layer from the project pipeline and reduce redundancy in the pipelines, and also improve security as these kind of configurations usually include credentials.

## Docker publish stage Abstraction:
As this project is missing a docker image registry, relevant commands for pushing the docker image to a docker image repository are commented out from the pipeline file. Nevertheless, they should be sufficient to abstract my approach for publishing the docker image.