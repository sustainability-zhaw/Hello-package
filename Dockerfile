# start from rstudio/plumber image 
FROM rstudio/plumber AS builder

# general update check, additional installation needed 
RUN apt-get update -qq \
  && apt-get install -y \ 
     libssl-dev \ 
     libcurl4-gnutls-dev \ 
  && rm -rf /var/lib/apt/lists/*


RUN R -e "install.packages('libcurl:latest')"

# set the container work directory 
WORKDIR /hello

# Volume definition on the host and within the container 
COPY config.yml /hello
#COPY data/. /data 
COPY src/. /hello/src 


# launch the plumbered R file 
#CMD Rscript src/hello.R
#CMD ["Rscript" "/src/hello.R"]
#CMD ["Rscript src/hello.R"]
CMD ["Rscript /src/hello.R"]
#CMD ["hello.R"]