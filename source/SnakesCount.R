
# Count up the stream Snakes
CountSnakes = function(combined){
count = 0
    Snake.counts <- data.frame(matrix(ncol = 4, nrow = (length(combined[,1]))))
    colnames(Snake.counts) <- c("Stream", "Field", "Edge", "Forest")
    # str(Snake.counts)
print("counting stream Snakes")
for (row in 1:length(combined.data[,1])){
    cd = combined.data[row,1]
#  print(cd)
    for (vertRow in 1:length(vert$Julian.day)){
        if (is.na(vert$Julian.day[vertRow]) == TRUE){
            Snake.counts$Stream[row] <- count
        } else if(vert$Julian.day[vertRow] == cd & vert$Habitat.type[vertRow] == "Stream" & vert$Group[vertRow] == "Snake"){
        count = count +1
        }
    }
Snake.counts$Stream[row] <- count
count = 0
}
print("Done counting Stream Snakes, now onto Field habitat")
for (row in 1:length(combined.data[,1])){
    cd = combined.data[row,1]
#  print(cd)
    for (vertRow in 1:length(vert$Julian.day)){
        if (is.na(vert$Julian.day[vertRow]) == TRUE){
            Snake.counts$Field[row] <- count
        } else if(vert$Julian.day[vertRow] == cd & vert$Habitat.type[vertRow] == "Field" & vert$Group[vertRow] == "Snake"){
        count = count +1
        }
    }
Snake.counts$Field[row] <- count
count = 0
}
print("done counting Field Snakes, now onto Edge habitat")
for (row in 1:length(combined.data[,1])){
    cd = combined.data[row,1]
#  print(cd)
    for (vertRow in 1:length(vert$Julian.day)){
        if (is.na(vert$Julian.day[vertRow]) == TRUE){
            Snake.counts$Edge[row] <- count
        } else if(vert$Julian.day[vertRow] == cd & vert$Habitat.type[vertRow] == "Edge" & vert$Group[vertRow] == "Snake"){
        count = count +1
        }
    }
Snake.counts$Edge[row] <- count
count = 0
}

print("done counting Edge Snakes, now onto Forest habitat")
for (row in 1:length(combined.data[,1])){
    cd = combined.data[row,1]
#  print(cd)
    for (vertRow in 1:length(vert$Julian.day)){
        if (is.na(vert$Julian.day[vertRow]) == TRUE){
            Snake.counts$Forest[row] <- count
        } else if(vert$Julian.day[vertRow] == cd & vert$Habitat.type[vertRow] == "Forest" & vert$Group[vertRow] == "Snake"){
        count = count +1
        }
    }
Snake.counts$Forest[row] <- count
count = 0
}
return(Snake.counts)
}

