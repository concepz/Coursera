# Box office Star Wars (in millions!)
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)


# Box office Star Wars 2nd triology (in millions!)
the_phantom_menace <- c(474.4, 552.5)
attack_of_clones <- c(310.7, 338.7)
revenge_of_sith <- c(380.3, 468.5)


# Create box_office
box_office <- c(new_hope,empire_strikes,return_jedi)
# Create box_office 2 
box_office2 <- c(the_phantom_menace,attack_of_clones,revenge_of_sith )

# Construct star_wars_matrix
star_wars_matrix <- matrix(box_office, nrow =3, ncol =2, byrow = TRUE)

# Construct star_wars_matrix 2
star_wars_matrix2 <-matrix(box_office2, nrow =3, ncol =2, byrow = TRUE)



# Assign Names to rows and  coloiunms to star_wars_matrix 1 and 2
rownames(star_wars_matrix2)<-c("the phantom menace", "attack of clones", "revenge of sith" )
colnames(star_wars_matrix2)<-c("US", "Non-US")

rownames(star_wars_matrix)<-c("new hope","empire strikes","return jedi")
colnames(star_wars_matrix)<-c("US", "Non-US")
star_wars_matrix2

star_wars_matrix[3,]
star_wars_matrix[,1]


# The worldwide box office figures
worldwide_vector <- rowSums(star_wars_matrix)

# Bind the new variable worldwide_vector as a column to star_wars_matrix
all_wars_matrix <- cbind(star_wars_matrix, worldwide_vector)
# Check all matricies in the console
star_wars_matrix[1,1:2]
star_wars_matrix

all_wars_matrix <-rbind(star_wars_matrix, star_wars_matrix2)

