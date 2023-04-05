
# Count up the stream Anurans
CountAnura = function(combined){
count = 0
    anura.counts <- data.frame(matrix(ncol = 4, nrow = (length(combined[,1]))))
    colnames(anura.counts) <- c("Stream", "Field", "Edge", "Forest")
    # str(anura.counts)
print("counting Stream Anurans")
for (row in 1:length(combined.data[,1])){
    cd = combined.data[row,1]
#  print(cd)
    for (vertRow in 1:length(vert$Julian.day)){
        if (is.na(vert$Julian.day[vertRow]) == TRUE){
            anura.counts$Stream[row] <- count
        } else if(vert$Julian.day[vertRow] == cd & vert$Habitat.type[vertRow] == "Stream" & vert$Class[vertRow] == "Anura"){
        count = count +1
        }
    }
anura.counts$Stream[row] <- count
count = 0
}
print("done counting Stream Anurans, now onto Field habitat")
for (row in 1:length(combined.data[,1])){
    cd = combined.data[row,1]
#  print(cd)
    for (vertRow in 1:length(vert$Julian.day)){
        if (is.na(vert$Julian.day[vertRow]) == TRUE){
            anura.counts$Field[row] <- count
        } else if(vert$Julian.day[vertRow] == cd & vert$Habitat.type[vertRow] == "Field" & vert$Class[vertRow] == "Anura"){
        count = count +1
        }
    }
anura.counts$Field[row] <- count
count = 0
}
print("done counting Field Anurans, now onto Edge habitat")
for (row in 1:length(combined.data[,1])){
    cd = combined.data[row,1]
#  print(cd)
    for (vertRow in 1:length(vert$Julian.day)){
        if (is.na(vert$Julian.day[vertRow]) == TRUE){
            anura.counts$Edge[row] <- count
        } else if(vert$Julian.day[vertRow] == cd & vert$Habitat.type[vertRow] == "Edge" & vert$Class[vertRow] == "Anura"){
        count = count +1
        }
    }
anura.counts$Edge[row] <- count
count = 0
}

print("done counting Edge Anurans, now onto Forest habitat")
for (row in 1:length(combined.data[,1])){
    cd = combined.data[row,1]
#  print(cd)
    for (vertRow in 1:length(vert$Julian.day)){
        if (is.na(vert$Julian.day[vertRow]) == TRUE){
            anura.counts$Forest[row] <- count
        } else if(vert$Julian.day[vertRow] == cd & vert$Habitat.type[vertRow] == "Forest" & vert$Class[vertRow] == "Anura"){
        count = count +1
        }
    }
anura.counts$Forest[row] <- count
count = 0
}
return(anura.counts)
}

