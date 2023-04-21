# Define a function that uses switch()
evaluate_grade <- function(grade) {
  switch(grade,
         "A" = print("Excellent!"),
         "B" = print("Good job!"),
         "C" = print("Fair."),
         "D" = print("Poor."),
         "F" = print("Fail!"),
         "NA" = print("Not applicable."),
         "Invalid" = print("Invalid input.")
  )
}

# Call the function with different inputs
evaluate_grade("A") # Output: Excellent!
evaluate_grade("B") # Output: Good job!
evaluate_grade("C") # Output: Fair.
evaluate_grade("D") # Output: Poor.
evaluate_grade("F") # Output: Fail!
evaluate_grade("NA") # Output: Not applicable.
evaluate_grade("Invalid") # Output: Invalid input.