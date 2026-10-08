power <- function(exponent) {
  function(x) {
    x ^ exponent
  }
}

square <- power(2)
cube <- power(3)
