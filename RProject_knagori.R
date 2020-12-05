source("dynGENIE3.R")

# Load time series data
TS1 <- read.expr.matrix("example_data/time_series_1.txt", form="rows.are.samples")
TS2 <- read.expr.matrix("example_data/time_series_2.txt", form="rows.are.samples")
TS3 <- read.expr.matrix("example_data/time_series_3.txt", form="rows.are.samples")

TS1
#Load sunflower time series data
#Converts na to zero
counts <- read.delim("example_data/sunflower.txt",row.names=NULL)
head(counts)
counts[is.na(counts)] <- 0

sun1 <- read.expr.matrix("example_data/sunflower.txt", form="rows.are.samples")

# Re-format data
time.points <- list(TS1[1,], TS2[1,], TS3[1,])
TS.data <- list(TS1[2:nrow(TS1),], TS2[2:nrow(TS2),], TS3[2:nrow(TS3),])

# Sunflower Re-format data 
sun.time.points <- list(sun1[1,])
sun.data <- list(sun1[2:nrow(sun1),])

# Run dynGENIE3
res <- dynGENIE3(TS.data,time.points)

# Run dynGENIE3 on Sunflower
#test ignoring NA
x=data.frame(a=c(2,3,5,8),b=c(3,8,NA,5),c=c(10,4,6,11))
x2 = na.omit(x)
x2
rowSums(x, na.rm = TRUE, dims = 1)
#res <- dynGENIE3(sun.data,sun.time.points)
#currently not working due to NA issues, na.rm seems like best option






                
                