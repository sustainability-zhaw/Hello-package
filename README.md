# hello-api in a docker container pushed as github packages

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

Step 5: Assign a package to a repository
- Select the Namespace path `sustainability-zhaw`and select `Packages`
- Select the package names `hello-package` and click on `Package settings` in the right sided vertical bar.
- Select the green button `Add Repository` and address the package to a repository of your choice. In our case it is the repository `hello-package`.
- As a suggestion check the box for `Inherit access from source repository (recommended)`

Step 6: Check the visibilit of the package within the repository
- In the right sided vertical bar you should see the Package `hello-package`. Click on the name to opern a new window showing further package details. 
