sit1 <- read.csv("Data/Sitting_Samples/sit1.csv", header = FALSE, sep = '\t')
sit1 <- formatData(sit1)
sit1 <- subset(sit1, list>250 & list<1100)
s1 <- createGraph(sit1)

sit2 <- read.csv("Data/Sitting_Samples/sit2.csv", header = FALSE, sep = '\t')
sit2 <- formatData(sit2)
sit2 <- subset(sit2, list>300 & list<1300)
s2 <- createGraph(sit2)

sit3 <- read.csv("Data/Sitting_Samples/sit3.csv", header = FALSE, sep = '\t')
sit3 <- formatData(sit3)
sit3 <- subset(sit3, list>125 & list<1500)
s3 <- createGraph(sit3)

sit4 <- read.csv("Data/Sitting_Samples/sit4.csv", header = FALSE, sep = '\t')
sit4 <- formatData(sit4)
sit4 <- subset(sit4, list>135 & list<1000)
s4 <- createGraph(sit4)

sit5 <- read.csv("Data/Sitting_Samples/sit5.csv", header = FALSE, sep = '\t')
sit5 <- formatData(sit5)
sit5 <- subset(sit5, list>125 & list<625)
s5 <- createGraph(sit5)

sit6 <- read.csv("Data/Sitting_Samples/sit6.csv", header = FALSE, sep = '\t')
sit6 <- formatData(sit6)
sit6 <- subset(sit6, list>100 & list<700)
s6 <- createGraph(sit6)

sit7 <- read.csv("Data/Sitting_Samples/sit7.csv", header = FALSE, sep = '\t')
sit7 <- formatData(sit7)
sit7 <- subset(sit7, list>100 & list<800)
s7 <- createGraph(sit7)

sit8 <- read.csv("Data/Sitting_Samples/sit8.csv", header = FALSE, sep = '\t')
sit8 <- formatData(sit8)
sit8 <- subset(sit8, list>200 & list<1100)
s8 <- createGraph(sit8)

sit9 <- read.csv("Data/Sitting_Samples/sit9.csv", header = FALSE, sep = '\t')
sit9 <- formatData(sit9)
sit9 <- subset(sit9, list>125 & list<1000)
s9 <- createGraph(sit9)

sit10 <- read.csv("Data/Sitting_Samples/sit10.csv", header = FALSE, sep = '\t')
sit10 <- formatData(sit10)
sit10 <- subset(sit10, list>130 & list<1000)
s10 <- createGraph(sit10)

sit11 <- read.csv("Data/Sitting_Samples/sit11.csv", header = FALSE, sep = '\t')
sit11 <- formatData(sit11)
sit11 <- subset(sit11, list>300 & list<1300)
s11 <- createGraph(sit11)

sit12 <- read.csv("Data/Sitting_Samples/sit12.csv", header = FALSE, sep = '\t')
sit12 <- formatData(sit12)
sit12 <- subset(sit12, list>200 & list<1500)
s12 <- createGraph(sit12)

sit13 <- read.csv("Data/Sitting_Samples/sit13.csv", header = FALSE, sep = '\t')
sit13 <- formatData(sit13)
sit13 <- subset(sit13, list>200 & list<1300)
s13 <- createGraph(sit13)

sit14 <- read.csv("Data/Sitting_Samples/sit14.csv", header = FALSE, sep = '\t')
sit14 <- formatData(sit14)
sit14 <- subset(sit14, list>250 & list<2000)
s14 <- createGraph(sit14)
