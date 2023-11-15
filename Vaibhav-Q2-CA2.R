#q2.b
# Assume that the observed values of the random variables are stored in a vector x
x <- c(5, 6, 4, 3, 2)

# Assume that the value of lambda is known
lambda <- 3

# Compute the likelihood function
lf <- prod(dpois(x, lambda))

# Print the result
print(lf)

#q2.c
# Assume that the observed values of the random variables are stored in a vector x
x <- c(5, 6, 4, 3, 2)

# Assume that the value of lambda is unknown and the Gamma distribution is the conjugate prior
# with hyperparameters alpha and beta
alpha <- 2
beta <- 1

# Compute the likelihood function
lf <- prod(dpois(x, lambda))

# Compute the prior distribution
prior <- dgamma(lambda, alpha, beta)

# Compute the normalizing constant
nc <- integrate(function(lambda) lf*prior, lower=0, upper=Inf)$value

# Compute the posterior distribution
posterior <- lf*prior / nc

# Print the result
print(posterior)

#q2.d
# Assume that the posterior distribution of lambda is stored in a function posterior
posterior <- function(lambda) { ... }

# Define the loss function as the squared error loss
loss <- function(lambda, estimate) { (lambda - estimate)^2 }

# Compute the MBRE of lambda
mbre <- optimize(function(lambda) {
  # Compute the expected loss
  el <- integrate(function(estimate) {
    loss(lambda, estimate) * posterior(estimate)
  }, lower=0, upper=Inf)$value
  # Return the expected loss
  el
}, lower=0, upper=Inf)$minimum

# Print the result
print(mbre)
