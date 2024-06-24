# Create the dataset
data <- data.frame(
  SCHOOL = c("A", "A", "A", "B", "B", "B", "C", "C", "C", "D", "D", "D"),
  GRADE_LEVEL = c("Grade 1", "Grade 2", "Grade 3", "Grade 1", "Grade 2", "Grade 3",
                  "Grade 1", "Grade 2", "Grade 3", "Grade 1", "Grade 2", "Grade 3"),
  NUMBER_OF_STUDENTS = c(25, 30, 20, 22, 28, 18, 20, 25, 15, 28, 32, 24)
)

# Mosaic Plot
mosaicplot(table(data$SCHOOL, data$GRADE_LEVEL),
           main = "Mosaic Plot of Number of Students by School and Grade Level",
           xlab = "School",
           ylab = "Grade Level",
           color = TRUE)

# Histogram Plot
hist(data$NUMBER_OF_STUDENTS,
     main = "Histogram Plot of Number of Students",
     xlab = "Number of Students",
     ylab = "Frequency",
     col = "lightblue",
     border = "black")

# Scatter Plot
plot(as.numeric(as.factor(data$GRADE_LEVEL)), data$NUMBER_OF_STUDENTS,
     main = "Scatter Plot of Number of Students by Grade Level",
     xlab = "Grade Level",
     ylab = "Number of Students",
     col = "blue",
     pch = 16,
     xaxt = "n")
axis(1, at = 1:3, labels = levels(as.factor(data$GRADE_LEVEL)))

# Optional: Scatter Plot with School differentiation
plot(as.numeric(as.factor(data$GRADE_LEVEL)), data$NUMBER_OF_STUDENTS,
     main = "Scatter Plot of Number of Students by Grade Level and School",
     xlab = "Grade Level",
     ylab = "Number of Students",
     col = as.factor(data$SCHOOL),
     pch = 16,
     xaxt = "n")
axis(1, at = 1:3, labels = levels(as.factor(data$GRADE_LEVEL)))
legend("topright", legend = levels(as.factor(data$SCHOOL)), col = 1:4, pch = 16)