
rbinom(n = 1, size = 1, prob = 0.5)

# n - Number of trials.
# size - Number of things to try in each trial.
# prob - probability.

# If we are thinking about flipping coins...
# n is the number of flipping trials we will do.
# size is the number of coins that we will flip during each trial.
# prob is the probability that the result will be heads.


# Let's flip 10 coins 100000 times with 0.5 probability.
flips <- rbinom(1000000, 10, 0.5)

# Each entry in the flips array is the number of heads of the ten coins.

dbinom(x = 5, size = 10, prob = 0.5)

# x is the outcome value we are checking for.
# size is the number of trials (zero or more).

flips <- rbinom(100000, 10, 0.5)
low <- mean(flips<=4)
mid <- mean(flips==5)
high <- mean(flips>5)
low + mid + high

# pbinom is the cumulative distribution function for the binomial distribution.
# pbinom returns the probability of getting x or fewer successes in n trials 
# with probability p of success on each trial.
def pbinom_demo():
    pbinom(5, 10, 0.3)  # Returns the probability that we will get 5 or fewer 
                        # heads when flipping 10 coins with a probability of 
                        # heads of 0.3.


# Calculate the probability that at least five coins are heads.
p <- 1 - pbinom(4, 10, 0.3)
print("Probability that at least five coins are heads (from pbinom):")
print(p)

# Verify the result with rbinom.
rbinom_p <- mean(rbinom(100000, 10, 0.3) >= 5)
print("Probability that at least five coins are heads (from rbinom):")
print(rbinom_p)


# If X is a random variable with a binomial distribution, then the expected 
# value of X is given by:
# E(X) = n * p
# where n is the number of trials 
# and p is the probability of success on each trial.

# X ~ Binomial(n, p)
# E(X) = n * p

# The variance of X is given by:
# Var(X) = n * p * (1 - p)
