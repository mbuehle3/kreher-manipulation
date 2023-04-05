
# Count up the stream Amphibians
CountAmphib = function(combined){
count = 0
    amphibian.counts <- data.frame(matrix(ncol = 4, nrow = (length(combined[,1]))))
    colnames(amphibian.counts) <- c("Stream", "Field", "Edge", "Forest")
    # str(amphibian.counts)
print("Counting Stream Amphibians")
for (row in 1:length(combined.data[,1])){
    cd = combined.data[row,1]
#  print(cd)
    for (vertRow in 1:length(vert$Julian.day)){
        if (is.na(vert$Julian.day[vertRow]) == TRUE){
            amphibian.counts$Stream[row] <- count
        } else if(vert$Julian.day[vertRow] == cd & vert$Habitat.type[vertRow] == "Stream" & vert$Class[vertRow] == "Amphibian"){
        count = count +1
        }
    }
amphibian.counts$Stream[row] <- count
count = 0
}
print("Done Counting Stream Amphibians, now onto Field habitat")
for (row in 1:length(combined.data[,1])){
    cd = combined.data[row,1]
#  print(cd)
    for (vertRow in 1:length(vert$Julian.day)){
        if (is.na(vert$Julian.day[vertRow]) == TRUE){
            amphibian.counts$Field[row] <- count
        } else if(vert$Julian.day[vertRow] == cd & vert$Habitat.type[vertRow] == "Field" & vert$Class[vertRow] == "Amphibian"){
        count = count +1
        }
    }
amphibian.counts$Field[row] <- count
count = 0
}
print("done counting Field amphibians, now onto Edge habitat")
for (row in 1:length(combined.data[,1])){
    cd = combined.data[row,1]
#  print(cd)
    for (vertRow in 1:length(vert$Julian.day)){
        if (is.na(vert$Julian.day[vertRow]) == TRUE){
            amphibian.counts$Edge[row] <- count
        } else if(vert$Julian.day[vertRow] == cd & vert$Habitat.type[vertRow] == "Edge" & vert$Class[vertRow] == "Amphibian"){
        count = count +1
        }
    }
amphibian.counts$Edge[row] <- count
count = 0
}

print("done counting Edge amphibians, now onto Forest habitat")
for (row in 1:length(combined.data[,1])){
    cd = combined.data[row,1]
#  print(cd)
    for (vertRow in 1:length(vert$Julian.day)){
        if (is.na(vert$Julian.day[vertRow]) == TRUE){
            amphibian.counts$Forest[row] <- count
        } else if(vert$Julian.day[vertRow] == cd & vert$Habitat.type[vertRow] == "Forest" & vert$Class[vertRow] == "Amphibian"){
        count = count +1
        }
    }
amphibian.counts$Forest[row] <- count
count = 0
}
return(amphibian.counts)
}

