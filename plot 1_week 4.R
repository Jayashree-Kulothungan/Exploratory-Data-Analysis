#read the files
emissions_data<- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#data frame with all of the PM2.5 emissions data for 1999, 2002, 2005, and 2008.'
total_emmision_each_year<-aggregate(emissions_data$Emissions,by =list(year=emissions_data$year), FUN=sum )

#plot
png(filename = "plot1_week4.png")
plot(total_emmision_each_year$year,total_emmision_each_year$x, type = 'b', main = "Total Emissions of PM2.5 in Baltimore City", xlab="Year" , ylab = "Total Emissions of PM2.5 (tons)" ,col = "red")


dev.off()