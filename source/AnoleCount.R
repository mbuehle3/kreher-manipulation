
# Count up the stream Anolis
CountAnolis = function(combined){
count = 0
    Anolis.counts <- data.frame(matrix(ncol = 4, nrow = (length(combined[,1]))))
    colnames(Anolis.counts) <- c("Stream", "Field", "Edge", "Forest")
    # str(Anolis.counts)
print("counting stream Anolis")
for (row in 1:length(combined.data[,1])){
    cd = combined.data[row,1]
#  print(cd)
    for (vertRow in 1:length(vert$Julian.day)){
        if (is.na(vert$Julian.day[vertRow]) == TRUE){
            Anolis.counts$Stream[row] <- count
        } else if(vert$Julian.day[vertRow] == cd & vert$Habitat.type[vertRow] == "Stream" & vert$Genus[vertRow] == "Anolis"){
        count = count +1
        }
    }
Anolis.counts$Stream[row] <- count
count = 0
}
print("done counting stream Anolis, now onto Field habitat")
for (row in 1:length(combined.data[,1])){
    cd = combined.data[row,1]
#  print(cd)
    for (vertRow in 1:length(vert$Julian.day)){
        if (is.na(vert$Julian.day[vertRow]) == TRUE){
            Anolis.counts$Field[row] <- count
        } else if(vert$Julian.day[vertRow] == cd & vert$Habitat.type[vertRow] == "Field" & vert$Genus[vertRow] == "Anolis"){
        count = count +1
        }
    }
Anolis.counts$Field[row] <- count
count = 0
}
print("done counting Field Anolis, now onto Edge habitat")
for (row in 1:length(combined.data[,1])){
    cd = combined.data[row,1]
#  print(cd)
    for (vertRow in 1:length(vert$Julian.day)){
        if (is.na(vert$Julian.day[vertRow]) == TRUE){
            Anolis.counts$Edge[row] <- count
        } else if(vert$Julian.day[vertRow] == cd & vert$Habitat.type[vertRow] == "Edge" & vert$Genus[vertRow] == "Anolis"){
        count = count +1
        }
    }
Anolis.counts$Edge[row] <- count
count = 0
}

print("done counting Edge Anolis, now onto Forest habitat")
for (row in 1:length(combined.data[,1])){
    cd = combined.data[row,1]
#  print(cd)
    for (vertRow in 1:length(vert$Julian.day)){
        if (is.na(vert$Julian.day[vertRow]) == TRUE){
            Anolis.counts$Forest[row] <- count
        } else if(vert$Julian.day[vertRow] == cd & vert$Habitat.type[vertRow] == "Forest" & vert$Genus[vertRow] == "Anolis"){
        count = count +1
        }
    }
Anolis.counts$Forest[row] <- count
count = 0
}
return(Anolis.counts)
}

