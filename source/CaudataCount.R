
# Count up the stream Caudatas
CountCaudata = function(combined){
count = 0
    caudata.counts <- data.frame(matrix(ncol = 4, nrow = (length(combined[,1]))))
    colnames(caudata.counts) <- c("Stream", "Field", "Edge", "Forest")
    # str(caudata.counts)
print("counting stream Caudatas")
for (row in 1:length(combined.data[,1])){
    cd = combined.data[row,1]
#  print(cd)
    for (vertRow in 1:length(vert$Julian.day)){
        if (is.na(vert$Julian.day[vertRow]) == TRUE){
            caudata.counts$Stream[row] <- count
        } else if(vert$Julian.day[vertRow] == cd & vert$Habitat.type[vertRow] == "Stream" & vert$Order[vertRow] == "Caudata"){
        count = count +1
        }
    }
caudata.counts$Stream[row] <- count
count = 0
}
print("done counting stream Caudatas, now onto Field habitat")
for (row in 1:length(combined.data[,1])){
    cd = combined.data[row,1]
#  print(cd)
    for (vertRow in 1:length(vert$Julian.day)){
        if (is.na(vert$Julian.day[vertRow]) == TRUE){
            caudata.counts$Field[row] <- count
        } else if(vert$Julian.day[vertRow] == cd & vert$Habitat.type[vertRow] == "Field" & vert$Order[vertRow] == "Caudata"){
        count = count +1
        }
    }
caudata.counts$Field[row] <- count
count = 0
}
print("done counting Field Caudatas, now onto Edge habitat")
for (row in 1:length(combined.data[,1])){
    cd = combined.data[row,1]
#  print(cd)
    for (vertRow in 1:length(vert$Julian.day)){
        if (is.na(vert$Julian.day[vertRow]) == TRUE){
            caudata.counts$Edge[row] <- count
        } else if(vert$Julian.day[vertRow] == cd & vert$Habitat.type[vertRow] == "Edge" & vert$Order[vertRow] == "Caudata"){
        count = count +1
        }
    }
caudata.counts$Edge[row] <- count
count = 0
}

print("done counting Edge Caudatas, now onto Forest habitat")
for (row in 1:length(combined.data[,1])){
    cd = combined.data[row,1]
#  print(cd)
    for (vertRow in 1:length(vert$Julian.day)){
        if (is.na(vert$Julian.day[vertRow]) == TRUE){
            caudata.counts$Forest[row] <- count
        } else if(vert$Julian.day[vertRow] == cd & vert$Habitat.type[vertRow] == "Forest" & vert$Order[vertRow] == "Caudata"){
        count = count +1
        }
    }
caudata.counts$Forest[row] <- count
count = 0
}
return(caudata.counts)
}

