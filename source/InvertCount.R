
# Count up the stream Amphibians
CountAmphib = function(vert, combined){
    vert = vert
    combined = combined
count = 0
print("counting stream amphibians")
for (row in 1:length(combined[,1])){
    cd = combined[row,1]
#  print(cd)
    for (vertRow in 1:length(vert$Julian.day)){
        if (is.na(vert$Julian.day[vertRow]) == TRUE){
            combined[row, 13] <- count
        } else if(vert$Julian.day[vertRow] == cd & vert$Habitat.type[vertRow] == "Stream" & vert$Class[vertRow] == "Amphibian"){
        count = count +1
        }
    }
combined[row, 13] <- count
count = 0
}
print("done counting stream amphibians, now onto Edge habitat")
for (row in 1:length(combined[,1])){
    cd = combined[row,1]
#  print(cd)
    for (vertRow in 1:length(vert$Julian.day)){
        if (is.na(vert$Julian.day[vertRow]) == TRUE){
            combined[row, 31] <- count
        } else if(vert$Julian.day[vertRow] == cd & vert$Habitat.type[vertRow] == "Edge" & vert$Class[vertRow] == "Amphibian"){
        count = count +1
        }
    }
combined[row, 31] <- count
count = 0
}
print("done counting edge amphibians, now onto field habitat")
for (row in 1:length(combined[,1])){
    cd = combined[row,1]
#  print(cd)
    for (vertRow in 1:length(vert$Julian.day)){
        if (is.na(vert$Julian.day[vertRow]) == TRUE){
            combined[row, 22] <- count
        } else if(vert$Julian.day[vertRow] == cd & vert$Habitat.type[vertRow] == "Field" & vert$Class[vertRow] == "Amphibian"){
        count = count +1
        }
    }
combined[row, 22] <- count
count = 0
}
print("done counting field amphibians, now onto Forest habitat")
for (row in 1:length(combined[,1])){
    cd = combined[row,1]
#  print(cd)
    for (vertRow in 1:length(vert$Julian.day)){
        if (is.na(vert$Julian.day[vertRow]) == TRUE){
            combined[row, 40] <- count
        } else if(vert$Julian.day[vertRow] == cd & vert$Habitat.type[vertRow] == "Forest" & vert$Class[vertRow] == "Amphibian"){
        count = count +1
        }
    }
combined[row, 40] <- count
count = 0
}
}