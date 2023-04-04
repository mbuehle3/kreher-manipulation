library(dplyr)

vert <- read.csv("data/vert-kreher.csv", header = TRUE)
# Need to concatenate DriftFence and PitTrap
str(vert)
vert$Class <- as.factor(vert$Class)
vert$Habitat.type <- as.factor(vert$Habitat.type)
vert$Group <- as.factor(vert$Group)
vert$Season <- as.factor(vert$Season)
vert$Order <- as.factor(vert$Order)
vert$Julian.day <- as.factor(vert$Julian.day)
vert$Month <- as.factor(vert$Month)
vert$Year <- as.factor(vert$Year)
vert$PitTrap <- as.factor(vert$PitTrap)
vert$Board <- as.factor(vert$Board)
vert$Sex <- as.factor(vert$Sex)
vert$Species <- as.factor(vert$Species)
vert$TrapNumber <- as.factor(paste(vert$Drift.fence,vert$PitTrap))
str(vert)

invert <- read.csv("data/invert-kreher.csv", header=TRUE)
str(invert)
invert$TrapNumber <- as.factor(paste(invert$Drift.fence,invert$PitTrap))
invert$Julian_Day <- as.factor(invert$Julian_Day)


weather <- read.csv("data/weather.csv", header = TRUE)
str(weather)
weather$Julian_Day <- as.factor(weather$Julian_Day)
weather$condition <- as.factor(weather$condition)
str(weather)



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

length(columns)
combined.data <- data.frame(matrix(nrow = length(weather$Julian_Day), ncol = length(columns)))
str(combined.data)

colnames(combined.data) <- c(
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

# Add in the basic weather data to the first 9 columns
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


str(vert)
 