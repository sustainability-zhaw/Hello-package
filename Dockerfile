# start from rstudio/plumber image 
FROM rstudio/plumber:latest

# set the container work directory 
WORKDIR /hello

# Volume definition on the host and withing the container 
COPY config.yml /hello
#COPY data/. /data 
COPY src/ /hello/src 

# launch the plumbered R file 
CMD ["src/hello.R"]