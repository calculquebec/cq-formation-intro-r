#!/usr/bin/env Rscript

print(R.Version()$version.string)


# This is a function
myFactorial <- function(n)
{
    # For negative numbers
    if (n < 0)
        return(0)

    # For 0 and 1
    if (n < 2)
        return(1)

    # Regular case: n*(n-1)*(n-2)*...*2*1
    return(n * myFactorial(n - 1))
}


# Loop from -1 to 10 inclusive
for (i in -1:10) {
    print(sprintf("%d! = %d", i, myFactorial(i)))
}

