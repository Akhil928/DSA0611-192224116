dates <- as.Date(c("2023-01-01", "2023-02-01", "2023-03-01", "2023-04-01", "2023-05-01"))
sales <- c(100, 120, 150, 130, 140)

# Create a line plot of Sales over time
plot(dates, sales, type="l", main="Sales Over Time", xlab="Date", ylab="Sales")

# Generate a bar plot showing monthly average Sales
barplot(sales, names.arg=format(dates, "%b"), main="Monthly Average Sales", xlab="Month", ylab="Sales")

# Plot a simplified seasonal decomposition of Sales
# Note: This is a simplified version as we don't have enough data for a proper seasonal decomposition
# We'll just plot the original series with some trend-like data for illustration
plot(dates, sales, type="l", main="Simplified Seasonal Decomposition of Sales", xlab="Date", ylab="Sales")
lines(dates, cumsum(sales)/seq_along(sales), col="red")  # Just an illustrative trend

# Create a lag plot to analyze autocorrelation in Sales
plot(sales[-length(sales)], sales[-1], main="Lag Plot of Sales", xlab="Sales(t)", ylab="Sales(t+1)")

# Generate a time series plot with a smoothed line of Sales
plot(dates, sales, type="l", main="Sales Over Time with Smoothed Line", xlab="Date", ylab="Sales")
lines(dates, lowess(sales)$y, col="red")
