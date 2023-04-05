
# Count up the stream Amphibians
CountInverts = function(combined){
    vert = vert
invertsCount <- data.frame(matrix(ncol = 5, nrow = length(combined.data[,1])))
colnames(invertsCount) <- c("Julian_day","Stream", "Field", "Edge", "Forest")
invertsCount[,1]  <- combined.data[,1]

count = 0
tmpcount = 0
print("Counting Stream Inverts")
for (row in 1:length(combined.data[,1])){
    cd = combined.data[row,1]
    # print(paste(invert$Julian_Day,count, "part 1"))
#  print(cd)
    for (invertRow in 1:length(invert$Julian_Day)){
        if(invert$Julian_Day[invertRow] == cd & invert$Habitat.type[invertRow] == "Stream"){
        tmpcount = (invert$Spiders[invertRow]    +
                invert$Scorpions[invertRow]  +
                invert$beetles[invertRow]    +
                invert$Ants[invertRow]       +
                invert$millipedes[invertRow] +
                invert$Crickets[invertRow]   +
                invert$Roaches[invertRow]    +
                invert$Isopods[invertRow]    +
                invert$centipedes[invertRow] +
                invert$snails[invertRow]     +
                invert$Worms[invertRow]      +
                invert$harvestmen[invertRow] +
                invert$Earwigs[invertRow]
        )
        count = count + tmpcount
        # print(paste(invert$Julian_Day,count))
        }
    }
invertsCount$Stream[row] <- count
count = 0
tmpcount = 0
}

print("Counting Field Inverts")
for (row in 1:length(combined.data[,1])){
    cd = combined.data[row,1]
    # print(paste(invert$Julian_Day,count, "part 1"))
#  print(cd)
    for (invertRow in 1:length(invert$Julian_Day)){
        if(invert$Julian_Day[invertRow] == cd & invert$Habitat.type[invertRow] == "Field"){
        tmpcount = (invert$Spiders[invertRow]    +
                invert$Scorpions[invertRow]  +
                invert$beetles[invertRow]    +
                invert$Ants[invertRow]       +
                invert$millipedes[invertRow] +
                invert$Crickets[invertRow]   +
                invert$Roaches[invertRow]    +
                invert$Isopods[invertRow]    +
                invert$centipedes[invertRow] +
                invert$snails[invertRow]     +
                invert$Worms[invertRow]      +
                invert$harvestmen[invertRow] +
                invert$Earwigs[invertRow]
        )
        count = count + tmpcount
        # print(paste(invert$Julian_Day,count))
        }
    }
invertsCount$Field[row] <- count
count = 0
tmpcount = 0
}

print("Counting Edge Inverts")
for (row in 1:length(combined.data[,1])){
    cd = combined.data[row,1]
    # print(paste(invert$Julian_Day,count, "part 1"))
#  print(cd)
    for (invertRow in 1:length(invert$Julian_Day)){
        if(invert$Julian_Day[invertRow] == cd & invert$Habitat.type[invertRow] == "Edge"){
        tmpcount = (invert$Spiders[invertRow]    +
                invert$Scorpions[invertRow]  +
                invert$beetles[invertRow]    +
                invert$Ants[invertRow]       +
                invert$millipedes[invertRow] +
                invert$Crickets[invertRow]   +
                invert$Roaches[invertRow]    +
                invert$Isopods[invertRow]    +
                invert$centipedes[invertRow] +
                invert$snails[invertRow]     +
                invert$Worms[invertRow]      +
                invert$harvestmen[invertRow] +
                invert$Earwigs[invertRow]
        )
        count = count + tmpcount
        # print(paste(invert$Julian_Day,count))
        }
    }
invertsCount$Edge[row] <- count
count = 0
tmpcount = 0
}

print("Counting Forest Inverts")
for (row in 1:length(combined.data[,1])){
    cd = combined.data[row,1]
    # print(paste(invert$Julian_Day,count, "part 1"))
#  print(cd)
    for (invertRow in 1:length(invert$Julian_Day)){
        if(invert$Julian_Day[invertRow] == cd & invert$Habitat.type[invertRow] == "Forest"){
        tmpcount = (invert$Spiders[invertRow]    +
                invert$Scorpions[invertRow]  +
                invert$beetles[invertRow]    +
                invert$Ants[invertRow]       +
                invert$millipedes[invertRow] +
                invert$Crickets[invertRow]   +
                invert$Roaches[invertRow]    +
                invert$Isopods[invertRow]    +
                invert$centipedes[invertRow] +
                invert$snails[invertRow]     +
                invert$Worms[invertRow]      +
                invert$harvestmen[invertRow] +
                invert$Earwigs[invertRow]
        )
        count = count + tmpcount
        # print(paste(invert$Julian_Day,count))
        }
    }
invertsCount$Forest[row] <- count
count = 0
tmpcount = 0
}
return(invertsCount)
}

