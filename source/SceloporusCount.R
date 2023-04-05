
# Count up the stream Sceloporus
CountSceloporus = function(combined){
count = 0
    Sceloporus.counts <- data.frame(matrix(ncol = 4, nrow = (length(combined[,1]))))
    colnames(Sceloporus.counts) <- c("Stream", "Field", "Edge", "Forest")
    # str(Sceloporus.counts)
print("counting stream Sceloporus")
for (row in 1:length(combined.data[,1])){
    cd = combined.data[row,1]
#  print(cd)
    for (vertRow in 1:length(vert$Julian.day)){
        if (is.na(vert$Julian.day[vertRow]) == TRUE){
            Sceloporus.counts$Stream[row] <- count
        } else if(vert$Julian.day[vertRow] == cd & vert$Habitat.type[vertRow] == "Stream" & vert$Genus[vertRow] == "Sceloporus"){
        count = count +1
        }
    }
Sceloporus.counts$Stream[row] <- count
count = 0
}
print("done counting stream Sceloporus, now onto Field habitat")
for (row in 1:length(combined.data[,1])){
    cd = combined.data[row,1]
#  print(cd)
    for (vertRow in 1:length(vert$Julian.day)){
        if (is.na(vert$Julian.day[vertRow]) == TRUE){
            Sceloporus.counts$Field[row] <- count
        } else if(vert$Julian.day[vertRow] == cd & vert$Habitat.type[vertRow] == "Field" & vert$Genus[vertRow] == "Sceloporus"){
        count = count +1
        }
    }
Sceloporus.counts$Field[row] <- count
count = 0
}
print("done counting Field Sceloporus, now onto Edge habitat")
for (row in 1:length(combined.data[,1])){
    cd = combined.data[row,1]
#  print(cd)
    for (vertRow in 1:length(vert$Julian.day)){
        if (is.na(vert$Julian.day[vertRow]) == TRUE){
            Sceloporus.counts$Edge[row] <- count
        } else if(vert$Julian.day[vertRow] == cd & vert$Habitat.type[vertRow] == "Edge" & vert$Genus[vertRow] == "Sceloporus"){
        count = count +1
        }
    }
Sceloporus.counts$Edge[row] <- count
count = 0
}

print("done counting Edge Sceloporus, now onto Forest habitat")
for (row in 1:length(combined.data[,1])){
    cd = combined.data[row,1]
#  print(cd)
    for (vertRow in 1:length(vert$Julian.day)){
        if (is.na(vert$Julian.day[vertRow]) == TRUE){
            Sceloporus.counts$Forest[row] <- count
        } else if(vert$Julian.day[vertRow] == cd & vert$Habitat.type[vertRow] == "Forest" & vert$Genus[vertRow] == "Sceloporus"){
        count = count +1
        }
    }
Sceloporus.counts$Forest[row] <- count
count = 0
}
return(Sceloporus.counts)
}

