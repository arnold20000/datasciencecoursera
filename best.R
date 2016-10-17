my_outcome <- na.omit(outcome)

my_outcome <- na.omit(outcome)

names(my_outcome)[11]<- "Heart_Attack"

g <- split(my_outcome$Heart_Attack, my_outcome$State)

# Return g

min_heart_mortality_state <- min(g$State)

# Rename column 2

names(my_outcome)[2] <- "Hospital"

n <- split(my_outcome$Heart_Attack, my_outcome$Hospital)

return n

#Still working on matching min(g$State) with Hospital.

