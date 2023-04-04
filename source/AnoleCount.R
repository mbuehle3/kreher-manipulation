
# Count up the stream Anolis
CountAnolis = function(vert, combined){
    vert = vert
    combined = combined
count = 0
print("counting stream Anolis")
for (row in 1:length(combined[,1])){
    cd = combined[row,1]
#  print(cd)
    for (vertRow in 1:length(vert$Julian.day)){
        if (is.na(vert$Julian.day[vertRow]) == TRUE){
            combined[row, 16] <- count
        } else if(vert$Julian.day[vertRow] == cd & vert$Habitat.type[vertRow] == "Stream" & vert$Genus[vertRow] == "Anolis"){
        count = count +1
        }
    }
combined.data[row, 16] <- count
count = 0
}
print("done counting stream Anolis, now onto Edge habitat")
for (row in 1:length(combined[,1])){
    cd = combined[row,1]
#  print(cd)
    for (vertRow in 1:length(vert$Julian.day)){
        if (is.na(vert$Julian.day[vertRow]) == TRUE){
            combined[row, 34] <- count
        } else if(vert$Julian.day[vertRow] == cd & vert$Habitat.type[vertRow] == "Edge" & vert$Genus[vertRow] == "Anolis"){
        count = count +1
        }
    }
combined.data[row, 34] <- count
count = 0
}
print("done counting edge Anolis, now onto field habitat")
for (row in 1:length(combined[,1])){
    cd = combined[row,1]
#  print(cd)
    for (vertRow in 1:length(vert$Julian.day)){
        if (is.na(vert$Julian.day[vertRow]) == TRUE){
            combined[row, 25] <- count
        } else if(vert$Julian.day[vertRow] == cd & vert$Habitat.type[vertRow] == "Field" & vert$Genus[vertRow] == "Anolis"){
        count = count +1
        }
    }
combined.data[row, 25] <- count
count = 0
}
print("done counting field Anolis, now onto Forest habitat")
for (row in 1:length(combined[,1])){
    cd = combined[row,1]
#  print(cd)
    for (vertRow in 1:length(vert$Julian.day)){
        if (is.na(vert$Julian.day[vertRow]) == TRUE){
            combined[row, 43] <- count
        } else if(vert$Julian.day[vertRow] == cd & vert$Habitat.type[vertRow] == "Forest" & vert$Genus[vertRow] == "Anolis"){
        count = count +1
        }
    }
combined.data[row, 43] <- count
count = 0
}
}