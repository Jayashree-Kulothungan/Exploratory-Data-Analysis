#read the files
emissions_data<- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#create a subset
data<- subset(emissions_data, fips == 24510)
#total emissions
total_emmision<-aggregate(data$Emissions,by = list(year = data$year), FUN =sum )
  
#plot
png(filename = "plot2_week4.png")
plot(total_emmision$year,total_emmision$x,type = "b" , main = "Total Emissions of PM2.5 in Baltimore City(fips == 24510)", xlab ="Year", ylab = "Total Emissions of PM2.5 (tons)" ,col = "red")
  
dev.off()