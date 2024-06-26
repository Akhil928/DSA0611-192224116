# Data
city <- c("New York", "Los Angeles", "Chicago", "Houston", "Phoenix")
latitude <- c(40.7128, 34.0522, 41.8781, 29.7604, 33.4484)
longitude <- c(-74.0060, -118.2437, -87.6298, -95.3698, -112.0740)
population <- c(8398748, 3990456, 2705994, 2325502, 1660272)

# Create a scatter plot of cities on a map based on Latitude and Longitude
plot(longitude, latitude, main="Cities Map", xlab="Longitude", ylab="Latitude", pch=20)
text(longitude, latitude, labels=city, pos=4, cex=0.7)

# Generate a bubble map where bubble size represents Population
plot(longitude, latitude, main="Population Bubble Map", xlab="Longitude", ylab="Latitude", cex=sqrt(population)/500, pch=21, bg="lightblue")
text(longitude, latitude, labels=city, pos=4, cex=0.7)

# Plot a choropleth map of Population by city
# Note: Without a map library, we'll use a simplified representation
barplot(population, names.arg=city, main="Population by City", xlab="City", ylab="Population")

# Create a bar plot showing the top 5 cities by Population
barplot(sort(population, decreasing=TRUE), names.arg=city[order(population, decreasing=TRUE)], main="Top 5 Cities by Population", xlab="City", ylab="Population", las=2)

# Generate a heatmap showing the density of cities based on Population
# Note: This is a simplified heatmap representation
image(as.matrix(population), main="Population Density Heatmap", xaxt="n", yaxt="n")
axis(1, at=seq(0, 1, length.out=5), labels=city)
