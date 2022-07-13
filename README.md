# hello-api in a docker container pushed to github packages

The purpose of this repo is to implement a simple docker container using the Github Packages manager

Step 1: Creating a new token
- Navigate to `github.com/setting/tokens`and click on `Generate new token`

Step 2: Adding the new token to the ENV variables:
- Open terminal and enter `export CR_PAT | docker login ghcr.io -u bajk --password-stdin`

Step 3: create a docker image
- navigate to the local Git folder containing all docker relevant files and copy the path to this folder
- Enter `docker build -t ghcr.io/sustainability-zhaw/hello_api-temp:latest`
- Check if the new image is visible in docker desktop

Step 4: Push the package to Git
- `docker push ghcr.io/sustainability-zhaw/hello-api-temp:latest`
