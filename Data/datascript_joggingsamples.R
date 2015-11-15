jog1 <- read.csv("Data/Jogging_Samples/jog1.csv", header = FALSE, sep = '\t')
jog1 <- formatData(jog1)
jog1 <- subset(jog1, list>200 & list<1250)
j1 <- createGraph(jog1)

jog2 <- read.csv("Data/Jogging_Samples/jog2.csv", header = FALSE, sep = '\t')
jog2 <- formatData(jog2)
jog2 <- subset(jog2, list>125 & list<750)
j2 <- createGraph(jog2)

jog3 <- read.csv("Data/Jogging_Samples/jog3.csv", header = FALSE, sep = '\t')
jog3 <- formatData(jog3)
jog3 <- subset(jog3, list>200 & list<1200)
j3 <- createGraph(jog3)

jog4 <- read.csv("Data/Jogging_Samples/jog4.csv", header = FALSE, sep = '\t')
jog4 <- formatData(jog4)
jog4 <- subset(jog4, list>200 & list<1200)
j4 <- createGraph(jog4)

jog5 <- read.csv("Data/Jogging_Samples/jog5.csv", header = FALSE, sep = '\t')
jog5 <- formatData(jog5)
jog5 <- subset(jog5, list>200 & list<1000)
j5 <- createGraph(jog5)

jog6 <- read.csv("Data/Jogging_Samples/jog6.csv", header = FALSE, sep = '\t')
jog6 <- formatData(jog6)
jog6 <- subset(jog6, list>300 & list<1200)
j6 <- createGraph(jog6)

jog7 <- read.csv("Data/Jogging_Samples/jog7.csv", header = FALSE, sep = '\t')
jog7 <- formatData(jog7)
jog7 <- subset(jog7, list>200 & list<1250)
j7 <- createGraph(jog7)

jog8 <- read.csv("Data/Jogging_Samples/jog8.csv", header = FALSE, sep = '\t')
jog8 <- formatData(jog8)
jog8 <- subset(jog8, list>200 & list<1200)
j8 <- createGraph(jog8)

jog9 <- read.csv("Data/Jogging_Samples/jog9.csv", header = FALSE, sep = '\t')
jog9 <- formatData(jog9)
jog9 <- subset(jog9, list>300 & list<1450)
j9 <- createGraph(jog9)

jog10 <- read.csv("Data/Jogging_Samples/jog10.csv", header = FALSE, sep = '\t')
jog10 <- formatData(jog10)
jog10 <- subset(jog10, list>250 & list<1250)
j10 <- createGraph(jog10)

jog11 <- read.csv("Data/Jogging_Samples/jog11.csv", header = FALSE, sep = '\t')
jog11 <- formatData(jog11)
jog11 <- subset(jog11, list>200 & list<1150)
j11 <- createGraph(jog11)

jog12 <- read.csv("Data/Jogging_Samples/jog12.csv", header = FALSE, sep = '\t')
jog12 <- formatData(jog12)
jog12 <- subset(jog12, list>300 & list<1400)
j12 <- createGraph(jog12)

jog13 <- read.csv("Data/Jogging_Samples/jog13.csv", header = FALSE, sep = '\t')
jog13 <- formatData(jog13)
jog13 <- subset(jog13, list>400 & list<1250)
j13 <- createGraph(jog13)

jog14 <- read.csv("Data/Jogging_Samples/jog14.csv", header = FALSE, sep = '\t')
jog14 <- formatData(jog14)
jog14 <- subset(jog14, list>250 & list<1050)
j14 <- createGraph(jog14)
