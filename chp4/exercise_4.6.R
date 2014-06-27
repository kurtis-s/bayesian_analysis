thetas = c(.25, .5, .75)
prior = c(.25, .5, .25)
pHeads = thetas
pTails = 1 - thetas
likelihood = pHeads^3 * pTails^9
evidence = thetas %*% likelihood
posterior = (likelihood * prior)/evidence

print(paste("Likelihood:", likelihood))
print(paste("Evidence:", evidence)) 
print(paste("Posterior:", posterior))
print(paste("Sum of posterior probabilities:", sum(posterior)))
