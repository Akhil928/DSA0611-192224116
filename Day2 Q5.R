# Data
id <- c(1, 2, 3, 4, 5)
X1 <- c(5, 7, 6, 8, 4)
X2 <- c(10, 12, 11, 9, 13)
X3 <- c(15, 14, 13, 16, 17)
X4 <- c(20, 18, 19, 17, 21)  # Adding X4 as it's mentioned in the questions

# Create a pairwise scatter plot matrix of X1, X2, X3, and X4
pairs(cbind(X1, X2, X3, X4), main="Pairwise Scatter Plot Matrix")

# Generate a 3D scatter plot of X1, X2, and X3
scatter3d <- function(x, y, z) {
  plot(x, y, type="n", main="3D Scatter Plot")
  text(x, y, labels=z, cex=0.7)
}
scatter3d(X1, X2, X3)

# Plot a parallel coordinates plot of X1, X2, X3, and X4
matplot(t(cbind(X1, X2, X3, X4)), type="l", main="Parallel Coordinates Plot",
        xaxt="n", ylab="Value", xlab="Variable")
axis(1, at=1:4, labels=c("X1", "X2", "X3", "X4"))

# Create a radar chart to compare values of X1, X2, X3, and X4 for ID 1
radar_chart <- function(values, labels) {
  angles <- seq(0, 2*pi, length.out=length(values)+1)
  plot(NULL, xlim=c(-1,1), ylim=c(-1,1), type="n", asp=1)
  polygon(sin(angles), cos(angles), border="gray")
  for (i in 1:length(values)) {
    arrows(0, 0, sin(angles[i])*values[i]/max(values), 
           cos(angles[i])*values[i]/max(values), length=0.1)
    text(sin(angles[i]), cos(angles[i]), labels=labels[i])
  }
}
radar_chart(c(X1[1], X2[1], X3[1], X4[1]), c("X1", "X2", "X3", "X4"))
title("Radar Chart for ID 1")

# Generate a heatmap showing correlations between X1, X2, X3, and X4
cor_matrix <- cor(cbind(X1, X2, X3, X4))
image(cor_matrix, main="Correlation Heatmap", axes=FALSE)
axis(1, at=seq(0, 1, length.out=4), labels=c("X1", "X2", "X3", "X4"))
axis(2, at=seq(0, 1, length.out=4), labels=c("X1", "X2", "X3", "X4"))
