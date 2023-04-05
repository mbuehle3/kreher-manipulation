
# Count up the stream Lizards
CountLizard = function(combined){
count = 0
    Lizard.counts <- data.frame(matrix(ncol = 4, nrow = (length(combined[,1]))))
    colnames(Lizard.counts) <- c("Stream", "Field", "Edge", "Forest")
    # str(Lizard.counts)
print("counting stream Lizards")
for (row in 1:length(combined.data[,1])){
    cd = combined.data[row,1]
#  print(cd)
    for (vertRow in 1:length(vert$Julian.day)){
        if (is.na(vert$Julian.day[vertRow]) == TRUE){
            Lizard.counts$Stream[row] <- count
        } else if(vert$Julian.day[vertRow] == cd & vert$Habitat.type[vertRow] == "Stream" & vert$Group[vertRow] == "Lizard"){
        count = count +1
        }
    }
Lizard.counts$Stream[row] <- count
count = 0
}
print("done counting stream Lizards, now onto Field habitat")
for (row in 1:length(combined.data[,1])){
    cd = combined.data[row,1]
#  print(cd)
    for (vertRow in 1:length(vert$Julian.day)){
        if (is.na(vert$Julian.day[vertRow]) == TRUE){
            Lizard.counts$Field[row] <- count
        } else if(vert$Julian.day[vertRow] == cd & vert$Habitat.type[vertRow] == "Field" & vert$Group[vertRow] == "Lizard"){
        count = count +1
        }
    }
Lizard.counts$Field[row] <- count
count = 0
}
print("done counting Field Lizards, now onto Edge habitat")
for (row in 1:length(combined.data[,1])){
    cd = combined.data[row,1]
#  print(cd)
    for (vertRow in 1:length(vert$Julian.day)){
        if (is.na(vert$Julian.day[vertRow]) == TRUE){
            Lizard.counts$Edge[row] <- count
        } else if(vert$Julian.day[vertRow] == cd & vert$Habitat.type[vertRow] == "Edge" & vert$Group[vertRow] == "Lizard"){
        count = count +1
        }
    }
Lizard.counts$Edge[row] <- count
count = 0
}

print("done counting Edge Lizards, now onto Forest habitat")
for (row in 1:length(combined.data[,1])){
    cd = combined.data[row,1]
#  print(cd)
    for (vertRow in 1:length(vert$Julian.day)){
        if (is.na(vert$Julian.day[vertRow]) == TRUE){
            Lizard.counts$Forest[row] <- count
        } else if(vert$Julian.day[vertRow] == cd & vert$Habitat.type[vertRow] == "Forest" & vert$Group[vertRow] == "Lizard"){
        count = count +1
        }
    }
Lizard.counts$Forest[row] <- count
count = 0
}
return(Lizard.counts)
}

