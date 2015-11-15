stand1 <- read.csv("Data/Standing_Samples/stand1.csv", header = FALSE, sep = '\t')
stand1 <- formatData(stand1)
stand1 <- subset(stand1, list>200 & list<1100)
st1 <- createGraph(stand1)

stand2 <- read.csv("Data/Standing_Samples/stand2.csv", header = FALSE, sep = '\t')
stand2 <- formatData(stand2)
stand2 <- subset(stand2, list>250 & list<1100)
st2 <- createGraph(stand2)

stand3 <- read.csv("Data/Standing_Samples/stand3.csv", header = FALSE, sep = '\t')
stand3 <- formatData(stand3)
stand3 <- subset(stand3, list>125 & list<990)
st3 <- createGraph(stand3)

stand4 <- read.csv("Data/Standing_Samples/stand4.csv", header = FALSE, sep = '\t')
stand4 <- formatData(stand4)
stand4 <- subset(stand4, list>150 & list<900)
st4 <- createGraph(stand4)

stand5 <- read.csv("Data/Standing_Samples/stand5.csv", header = FALSE, sep = '\t')
stand5 <- formatData(stand5)
stand5 <- subset(stand5, list>600 & list<1100)
st5 <- createGraph(stand5)

stand6 <- read.csv("Data/Standing_Samples/stand6.csv", header = FALSE, sep = '\t')
stand6 <- formatData(stand6)
stand6 <- subset(stand6, list>300 & list<1100)
st6 <- createGraph(stand6)

stand7 <- read.csv("Data/Standing_Samples/stand7.csv", header = FALSE, sep = '\t')
stand7 <- formatData(stand7)
stand7 <- subset(stand7, list>150 & list<1150)
st7 <- createGraph(stand7)

stand8 <- read.csv("Data/Standing_Samples/stand8.csv", header = FALSE, sep = '\t')
stand8 <- formatData(stand8)
stand8 <- subset(stand8, list>200 & list<1200)
st8 <- createGraph(stand8)

stand9 <- read.csv("Data/Standing_Samples/stand9.csv", header = FALSE, sep = '\t')
stand9 <- formatData(stand9)
stand9 <- subset(stand9, list>150 & list<900)
st9 <- createGraph(stand9)

stand10 <- read.csv("Data/Standing_Samples/stand10.csv", header = FALSE, sep = '\t')
stand10 <- formatData(stand10)
stand10 <- subset(stand10, list>125 & list<1000)
st10 <- createGraph(stand10)

stand11 <- read.csv("Data/Standing_Samples/stand11.csv", header = FALSE, sep = '\t')
stand11 <- formatData(stand11)
stand11 <- subset(stand11, list>250 & list<1100)
st11 <- createGraph(stand11)

stand12 <- read.csv("Data/Standing_Samples/stand12.csv", header = FALSE, sep = '\t')
stand12 <- formatData(stand12)
stand12 <- subset(stand12, list>150 & list<1000)
st12 <- createGraph(stand12)

stand13 <- read.csv("Data/Standing_Samples/stand13.csv", header = FALSE, sep = '\t')
stand13 <- formatData(stand13)
stand13 <- subset(stand13, list>250 & list<2000)
st13 <- createGraph(stand13)

stand14 <- read.csv("Data/Standing_Samples/stand14.csv", header = FALSE, sep = '\t')
stand14 <- formatData(stand14)
stand14 <- subset(stand14, list>250 & list<1250)
st14 <- createGraph(stand14)
