
# Count up the stream Reptiles
CountReptiles = function(combined){
count = 0
    Reptile.counts <- data.frame(matrix(ncol = 4, nrow = (length(combined[,1]))))
    colnames(Reptile.counts) <- c("Stream", "Field", "Edge", "Forest")
    # str(Reptile.counts)
print("counting stream Reptiles")

for (row in 1:length(combined.data[,1])){
    cd = combined.data[row,1]
#  print(cd)
    for (vertRow in 1:length(vert$Julian.day)){
        if (is.na(vert$Julian.day[vertRow]) == TRUE){
            Reptile.counts$Stream[row] <- count
        } else if(vert$Julian.day[vertRow] == cd & vert$Habitat.type[vertRow] == "Stream" & vert$Class[vertRow] == "Reptile"){
        count = count +1
        }
    }
Reptile.counts$Stream[row] <- count
count = 0
}
print("done counting stream Reptiles, now onto Field habitat")
for (row in 1:length(combined.data[,1])){
    cd = combined.data[row,1]
#  print(cd)
    for (vertRow in 1:length(vert$Julian.day)){
        if (is.na(vert$Julian.day[vertRow]) == TRUE){
            Reptile.counts$Field[row] <- count
        } else if(vert$Julian.day[vertRow] == cd & vert$Habitat.type[vertRow] == "Field" & vert$Class[vertRow] == "Reptile"){
        count = count +1
        }
    }
Reptile.counts$Field[row] <- count
count = 0
}
print("done counting Field Reptiles, now onto Edge habitat")
for (row in 1:length(combined.data[,1])){
    cd = combined.data[row,1]
#  print(cd)
    for (vertRow in 1:length(vert$Julian.day)){
        if (is.na(vert$Julian.day[vertRow]) == TRUE){
            Reptile.counts$Edge[row] <- count
        } else if(vert$Julian.day[vertRow] == cd & vert$Habitat.type[vertRow] == "Edge" & vert$Class[vertRow] == "Reptile"){
        count = count +1
        }
    }
Reptile.counts$Edge[row] <- count
count = 0
}

print("done counting Edge Reptiles, now onto Forest habitat")
for (row in 1:length(combined.data[,1])){
    cd = combined.data[row,1]
#  print(cd)
    for (vertRow in 1:length(vert$Julian.day)){
        if (is.na(vert$Julian.day[vertRow]) == TRUE){
            Reptile.counts$Forest[row] <- count
        } else if(vert$Julian.day[vertRow] == cd & vert$Habitat.type[vertRow] == "Forest" & vert$Class[vertRow] == "Reptile"){
        count = count +1
        }
    }
Reptile.counts$Forest[row] <- count
count = 0
}
return(Reptile.counts)
}

