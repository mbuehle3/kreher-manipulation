source("source/FunctionSourcer.R")

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
str(combined.data)
# Add in the basic weather data to the first 9 columns
combined.data[,1] <- weather$Julian_Day
combined.data[,2] <- weather$tempmin
combined.data[,3] <- weather$tempmax
combined.data[,4] <- weather$temp
combined.data[,6] <- weather$humidity
combined.data[,8] <- weather$precip
str(combined.data)
temp.counter = 1
for (row in 2:(length(weather$Julian_Day))){
    combined.data[row, 5] <- weather$temp[temp.counter]
    combined.data[row, 7] <- weather$humidity[temp.counter]
    combined.data[row, 9] <- weather$precip[temp.counter]
    temp.counter <- temp.counter + 1
}


# str(vert)
# str(combined.data)
# combined.data[,13] # amphibians counts
# vert$Class
# length(vert[,1])
# counter = 0
# combined.data[,1]
source("source/FunctionSourcer.R")
CountAmphib()
str(combined.data)
CountAnolis(vert, combined.data)
count = 0

print("counting stream amphibians")
for (row in 1:length(combined.data[,1])){
    cd = combined.data[row,1]
#  print(cd)
    for (vertRow in 1:length(vert$Julian.day)){
        if (is.na(vert$Julian.day[vertRow]) == TRUE){
            combined.data[row, 13] <- count
            # print(count)
        } else if(vert$Julian.day[vertRow] == cd & vert$Habitat.type[vertRow] == "Stream" & vert$Class[vertRow] == "Amphibian"){
        count = count +1
        print(count)
        }
    }
combined.data[row, 13] <- count
count = 0
}
