# Streamline Shiny Application

## How to run the app?

-   First off clone the repository.

-   After cloning, open the repo and inside the terminal run the following code:

    `docker build --tag testing_app .`

-   Please don't forget the period `.` at the end of the code above. The period at the end implies `Dockerfile` being at the root of the directory.

-   The build time could be anywhere between 5-20 mins depending on the machine.

-   After the image is built, run the following code in the terminal:

    `docker run -p 3838:3838 testing_app`

-   Once the code is ran, go to the browser and paste <http://0.0.0.0:3838>.

Now, you have a shiny app up and running.

## About the yaml files:

-   The prod.yaml and dev.yaml files are there for Azure pipelines. Microsoft Azure team is reviewing my request for parallel jobs. Hopefully, I get it approved and have an end-to-end solution.
