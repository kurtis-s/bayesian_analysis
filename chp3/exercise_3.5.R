perc_first_graders = 0.2
perc_sixth_graders = 0.2
perc_eleventh_graders = 0.6

#Get joint probabilities
conjoint_probs = matrix( c(.3, .6, .1, .6, .3, .1, .3, .1 ,.6), nrow=3, ncol=3, byrow=TRUE )
conjoint_probs[1, ] = conjoint_probs[1, ] * perc_first_graders
conjoint_probs[2, ] = conjoint_probs[2, ] * perc_sixth_graders
conjoint_probs[3, ] = conjoint_probs[3, ] * perc_eleventh_graders
conjoint_probs = cbind(conjoint_probs, rowSums(conjoint_probs))
conjoint_probs = rbind(conjoint_probs, colSums(conjoint_probs))

print(conjoint_probs)
