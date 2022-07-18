# start from rstudio/plumber image 
FROM rstudio/plumber:latest

# general update check, additional installation needed 
RUN apt-get update -qq \
  && apt-get install -y \ 
     libssl-dev \ 
     libcurl4-gnutls-dev \ 
  && rm -rf /var/lib/apt/lists/*



# set the container work directory 
WORKDIR /hello

# Volume definition on the host and within the container 
COPY config.yml /hello
#COPY data/. /data 
COPY src/. /hello/src 

RUN R -e "install.packages('libcurl:latest')"

# launch the plumbered R file 
#CMD Rscript src/hello.R
CMD ["Rscript" "src/hello.R"]
#CMD ["Rscript /src/hello.R"]
#CMD ["hello.R"]