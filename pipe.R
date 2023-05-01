
# add function
add <- function(num_1, num_2) {
  return (num_1 + num_2)
}

# multiplaction
mul <- function(num_1, num_2) {
  return (num_1 * num_2)
}

# div function
div <- function(num_1, num_2) {
  return (num_1 / num_2)
}

res <- add(4, 2) |> mul(3) |> div(2)

print(res)