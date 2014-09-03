
# check that the data dir exists, if not, exit
if (!file.exists("/Users/geo/Code/octocats/Coursera_R_Programming/")) {
          stop("Directory /Users/geo/Code/octocats/Coursera_R_Programming/ does not exist.")
                }

# set the working directory 
setwd("/Users/geo/Code/octocats/Coursera_R_Programming/")

sink("sink_utility.txt")

# check that the data dir exists, if not, create it
if (!file.exists("/Users/geo/Code/octocats/Coursera_R_Programming/data/")) {
          dir.create("/Users/geo/Code/octocats/Coursera_R_Programming/data/")
                    # set the working directory 
#setwd("/Users/geo/Code/octocats/Coursera_R_Programming/data")
                }

fileUrl <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"
download.file(fileUrl, destfile = "./data/cameras.csv", method = "curl")
print("Downloaded : ")
list.files("./data")

dateDownloaded <- date()
  print("on date : ")
  dateDownloaded 

  sink()
