########################################################################
########################################################################
# Setting things to get the script to work 
setwd("./")
source("source/FunctionSourcer.R") # Calls the functions that will be used later on
########################################################################
########################################################################
print("Reading in the Vertebrate Dataset and correcting data types")
vert <- read.csv("data/vert-kreher.csv", header = TRUE)


vert$Class        <- as.factor(vert$Class)
vert$Habitat.type <- as.factor(vert$Habitat.type)
vert$Group        <- as.factor(vert$Group)
vert$Season       <- as.factor(vert$Season)
vert$Order        <- as.factor(vert$Order)
vert$Julian.day   <- as.factor(vert$Julian.day)
vert$Month        <- as.factor(vert$Month)
vert$Year         <- as.factor(vert$Year)
vert$PitTrap      <- as.factor(vert$PitTrap)
vert$Board        <- as.factor(vert$Board)
vert$Sex          <- as.factor(vert$Sex)
vert$Species      <- as.factor(vert$Species)
vert$TrapNumber   <- as.factor(paste(vert$Drift.fence,vert$PitTrap))
# str(vert)

########################################################################
print("Reading in the Invertebrate Dataset and correcting data types")
invert <- read.csv("data/invert-kreher.csv", header=TRUE)
# str(invert)
invert$TrapNumber <- as.factor(paste(invert$Drift.fence,invert$PitTrap))
invert$Julian_Day <- as.factor(invert$Julian_Day)
invert$Spiders    <-  suppressWarnings(as.numeric(invert$Spiders))
invert$Scorpions  <-  suppressWarnings(as.numeric(invert$Scorpions))
invert$beetles    <-  suppressWarnings(as.numeric(invert$beetles))
invert$Ants       <-  suppressWarnings(as.numeric(invert$Ants)) 
invert$millipedes <-  suppressWarnings(as.numeric(invert$millipedes))
invert$Crickets   <-  suppressWarnings(as.numeric(invert$Crickets))
invert$Roaches    <-  suppressWarnings(as.numeric(invert$Roaches))
invert$Isopods    <-  suppressWarnings(as.numeric(invert$Isopods))
invert$centipedes <-  suppressWarnings(as.numeric(invert$centipedes))
invert$snails     <-  suppressWarnings(as.numeric(invert$snails))
invert$Worms      <-  suppressWarnings(as.numeric(invert$Worms))
invert$harvestmen <-  suppressWarnings(as.numeric(invert$harvestmen))
invert$Earwigs    <-  suppressWarnings(as.numeric(invert$Earwigs))

# Replace all the NA values introduced previously with zeroes
invert$Spiders[is.na(invert$Spiders)]       <- 0
invert$Scorpions[is.na(invert$Scorpions)]   <- 0
invert$beetles[is.na(invert$beetles)]       <- 0
invert$Ants[is.na(invert$Ants)]             <- 0
invert$millipedes[is.na(invert$millipedes)] <- 0
invert$Crickets[is.na(invert$Crickets)]     <- 0
invert$Roaches[is.na(invert$Roaches)]       <- 0
invert$Isopods[is.na(invert$Isopods)]       <- 0
invert$centipedes[is.na(invert$centipedes)] <- 0
invert$snails[is.na(invert$snails)]         <- 0
invert$Worms[is.na(invert$Worms)]           <- 0
invert$harvestmen[is.na(invert$harvestmen)] <- 0
invert$Earwigs[is.na(invert$Earwigs)]       <- 0
# str(invert)
####################################################################


print("Reading in the Weather Dataset and correcting data types")
weather <- read.csv("data/weather.csv", header = TRUE)
weather$Julian_Day <- as.factor(weather$Julian_Day)
weather$condition  <- as.factor(weather$condition)
# str(weather)
######################################################
# Combine the Data
#############################################

# Column headers for our new combined dataframe

columns <- c(
'julian_day',
'Min_temp',
'Max_temp',
'Mean_temp',
'Temperature_on_day_prior',
'Humidity',
'Humidity_on_day_prior',
'Precipitation',
'Precipitation_on_day_prior',
'stream_invertebrates',
'stream_frogs',
'stream_salamanders',
'stream_Amphibians',
'stream_lizards',
'stream_fence_lizards',
'stream_anoles',
'stream_snakes',
'stream_reptiles',
'field_invertebrates',
'field_frogs',
'field_salamanders',
'field_Amphibians',
'field_lizards',
'field_fence_lizards',
'field_anoles',
'field_snakes',
'field_reptiles',
'edge_invertebrates',
'edge_frogs',
'edge_salamanders',
'edge_Amphibians',
'edge_lizards',
'edge_fence_lizards',
'edge_anoles',
'edge_snakes',
'edge_reptiles',
'forest_invertebrates',
'forest_frogs',
'forest_salamanders',
'forest_Amphibians',
'forest_lizards',
'forest_fence_lizards',
'forest_anoles',
'forest_snakes',
'forest_reptiles'
)

print("Creating an empty dataframe to start storing data")
combined.data <- data.frame(matrix(nrow = length(weather$Julian_Day), ncol = length(columns)))
# str(combined.data)



# Add meaningful column names, numbers indicate the column number, used to aid in designing functions
colnames(combined.data) <- c(
'1_julian_day',                  #
'2_Min_temp',                    #
'3_Max_temp',                    #
'4_Mean_temp',                   #
'5_Temperature_on_day_prior',    #
'6_Humidity',                    #
'7_Humidity_on_day_prior',       #
'8_Precipitation',               #
'9_Precipitation_on_day_prior',  #
'10_stream_invertebrates',        #
'11_stream_frogs',                #
'12_stream_salamanders',          #
'13_stream_Amphibians',           #
'14_stream_lizards',              #
'15_stream_fence_lizards',        #
'16_stream_anoles',               #
'17_stream_snakes',               #
'18_stream_reptiles',             #
'19_field_invertebrates',         #
'20_field_frogs',                 #
'21_field_salamanders',           #
'22_field_Amphibians',            #
'23_field_lizards',               #
'24_field_fence_lizards',         #
'25_field_anoles',                #
'26_field_snakes',                #
'27_field_reptiles',              #
'28_edge_invertebrates',          #
'29_edge_frogs',                  #
'30_edge_salamanders',            #
'31_edge_Amphibians',             #
'32_edge_lizards',                #
'33_edge_fence_lizards',          #
'34_edge_anoles',                 #
'35_edge_snakes',                 #
'36_edge_reptiles',               #
'37_forest_invertebrates',        #
'38_forest_frogs',                #
'39_forest_salamanders',          #
'40_forest_Amphibians',           #
'41_forest_lizards',              #
'42_forest_fence_lizards',        #
'43_forest_anoles',               #
'44_forest_snakes',               #
'45_forest_reptiles'              #
)

# str(combined.data)
# Add in the basic weather data to the first 9 columns
print("Adding Weather data to new dataframe")
combined.data[,1] <- weather$Julian_Day
combined.data[,2] <- weather$tempmin
combined.data[,3] <- weather$tempmax
combined.data[,4] <- weather$temp
combined.data[,6] <- weather$humidity
combined.data[,8] <- weather$precip
temp.counter = 1
for (row in 2:(length(weather$Julian_Day))){
    combined.data[row, 5] <- weather$temp[temp.counter]
    combined.data[row, 7] <- weather$humidity[temp.counter]
    combined.data[row, 9] <- weather$precip[temp.counter]
    temp.counter <- temp.counter + 1
}

########################################################################
# Time to start counting
########################################################################

#Calculate Total Invertebrate Counts
print("Calculating Total Invertebrates Counts -- This will take a while")

InvertCounts <- CountInverts(combined.data)
combined.data[,10] <- InvertCounts[,2]
combined.data[,19] <- InvertCounts[,3]
combined.data[,28] <- InvertCounts[,4]
combined.data[,37] <- InvertCounts[,5]

# Calculate Total Frog Counts
print("Calculating Total Frog Counts")
anuraCounts <- CountAnura(combined.data)

combined.data[,11] <- anuraCounts[,1]
combined.data[,20] <- anuraCounts[,2]
combined.data[,29] <- anuraCounts[,3]
combined.data[,38] <- anuraCounts[,4]

# Calculate Total Salamander Counts
print("Calculating Total Salamander Counts")
caudataCounts <- CountCaudata(combined.data)

combined.data[,12] <- caudataCounts[,1]
combined.data[,21] <- caudataCounts[,2]
combined.data[,30] <- caudataCounts[,3]
combined.data[,39] <- caudataCounts[,4]

# Calculate Total Amphibian Counts
print("Calculating Total Amphibian Counts")
amphibianCounts <- CountAmphib(combined.data)
combined.data[,13] <- amphibianCounts[,1]
combined.data[,22] <- amphibianCounts[,2]
combined.data[,31] <- amphibianCounts[,3]
combined.data[,40] <- amphibianCounts[,4]

# Calculate Total Lizard Counts
print("Calculating Total Lizard Counts")

lizardCounts <- CountLizard(combined.data)

combined.data[,14] <- lizardCounts[,1]
combined.data[,23] <- lizardCounts[,2]
combined.data[,32] <- lizardCounts[,3]
combined.data[,41] <- lizardCounts[,4]

# Calculate Total Sceloporus Counts
print("Calculating Total Sceloporus Counts")

SceloporusCounts <- CountSceloporus(combined.data)

combined.data[,15] <- SceloporusCounts[,1]
combined.data[,24] <- SceloporusCounts[,2]
combined.data[,33] <- SceloporusCounts[,3]
combined.data[,42] <- SceloporusCounts[,4]


# Calculate Total Anolis Counts
print("Calculating Total Anolis Counts")
AnolisCounts <- CountAnolis(combined.data)

combined.data[,16] <- AnolisCounts[,1]
combined.data[,25] <- AnolisCounts[,2]
combined.data[,34] <- AnolisCounts[,3]
combined.data[,43] <- AnolisCounts[,4]


# Calculate Total Snake Counts
print("Calculating Total Snake Counts")
SnakeCounts <- CountSnakes(combined.data)

combined.data[,17] <- SnakeCounts[,1]
combined.data[,26] <- SnakeCounts[,2]
combined.data[,35] <- SnakeCounts[,3]
combined.data[,44] <- SnakeCounts[,4]

# Calculate Total Reptiles Counts
print("Calculating Total Reptile Counts")
ReptileCounts <- CountReptiles(combined.data)

combined.data[,18] <- ReptileCounts[,1]
combined.data[,27] <- ReptileCounts[,2]
combined.data[,36] <- ReptileCounts[,3]
combined.data[,45] <- ReptileCounts[,4]


# str(combined.data)
print("Writing to combined_data.csv")
write.csv(combined.data, "./combined_data.csv")
print("Done")
# ##################################
# # Code playground
# str(invert)
# invertsCount <- data.frame(matrix(ncol = 5, nrow = length(combined.data[,1])))
# colnames(invertsCount) <- c("Julian_day","Stream", "Field", "Edge", "Forest")
# invertsCount[,1]  <- combined.data[,1]

# count = 0
# tmpcount = 0
# print("counting stream inverts")
# for (row in 1:length(combined.data[,1])){
#     cd = combined.data[row,1]
#     # print(paste(invert$Julian_Day,count, "part 1"))
# #  print(cd)
#     for (invertRow in 1:length(invert$Julian_Day)){
#         if(invert$Julian_Day[invertRow] == cd & invert$Habitat.type[invertRow] == "Stream"){
#         tmpcount = (invert$Spiders[invertRow]    +
#                 invert$Scorpions[invertRow]  +
#                 invert$beetles[invertRow]    +
#                 invert$Ants[invertRow]       +
#                 invert$millipedes[invertRow] +
#                 invert$Crickets[invertRow]   +
#                 invert$Roaches[invertRow]    +
#                 invert$Isopods[invertRow]    +
#                 invert$centipedes[invertRow] +
#                 invert$snails[invertRow]     +
#                 invert$Worms[invertRow]      +
#                 invert$harvestmen[invertRow] +
#                 invert$Earwigs[invertRow]
#         )
#         count = count + tmpcount
#         # print(paste(invert$Julian_Day,count))
#         }
#     }
# invertsCount$Stream[row] <- count
# count = 0
# tmpcount = 0
# }
# invertsCount
# invert$Julian_Day
# str(invert)
