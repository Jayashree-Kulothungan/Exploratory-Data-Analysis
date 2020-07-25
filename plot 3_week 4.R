#read the files
emissions_data<- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#create a subset
data<- subset(emissions_data, fips == 24510)
#total emissions
total_emmision<-aggregate(data$Emissions,by = list(year = data$year, type = data$type), FUN =sum )

#ggplot2
library(ggplot2)

##plot
png(filename = "plot3_week4.png")
qplot(total_emmision$year,total_emmision$x, color = total_emmision$type, geom = "line",main = "Total Emissions of PM2.5 in Baltimore City By pollutant type", xlab = "Year", ylab = "Total Emissions (tons)")

dev.off()
