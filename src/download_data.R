# Download and unzip data

data_url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

dir.create("data")

dest_file <- file.path("data", "electric_power_consumption.zip")

if (!file.exists(dest_file)) {
  download.file(data_url, dest_file)
}

unzip(dest_file, exdir = "data")