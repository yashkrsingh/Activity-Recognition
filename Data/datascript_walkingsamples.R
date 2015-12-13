walk1 <- read.csv("~/Activity-Recognition/Data/Walking_Samples/walk1.csv", header = FALSE, sep = '\t')
walk1 <- formatData(walk1)
walk1 <- subset(walk1, list>130 & list<1000)
w1 <- createGraph(walk1)

walk2 <- read.csv("~/Activity-Recognition/Data/Walking_Samples/walk2.csv", header = FALSE, sep = '\t')
walk2 <- formatData(walk2)
walk2 <- subset(walk2, list>125 & list<1080)
w2 <- createGraph(walk2)

walk3 <- read.csv("~/Activity-Recognition/Data/Walking_Samples/walk3.csv", header = FALSE, sep = '\t')
walk3 <- formatData(walk3)
walk3 <- subset(walk3, list>200 & list<1100)
w3 <- createGraph(walk3)

walk4 <- read.csv("~/Activity-Recognition/Data/Walking_Samples/walk4.csv", header = FALSE, sep = '\t')
walk4 <- formatData(walk4)
walk4 <- subset(walk4, list>150 & list<800)
w4 <- createGraph(walk4)

walk5 <- read.csv("~/Activity-Recognition/Data/Walking_Samples/walk5.csv", header = FALSE, sep = '\t')
walk5 <- formatData(walk5)
walk5 <- subset(walk5, list>200 & list<1100)
w5 <- createGraph(walk5)

walk6 <- read.csv("~/Activity-Recognition/Data/Walking_Samples/walk6.csv", header = FALSE, sep = '\t')
walk6 <- formatData(walk6)
walk6 <- subset(walk6, list>200 & list<1100)
w6 <- createGraph(walk6)

walk7 <- read.csv("~/Activity-Recognition/Data/Walking_Samples/walk7.csv", header = FALSE, sep = '\t')
walk7 <- formatData(walk7)
walk7 <- subset(walk7, list>200 & list<1100)
w7 <- createGraph(walk7)

walk8 <- read.csv("~/Activity-Recognition/Data/Walking_Samples/walk8.csv", header = FALSE, sep = '\t')
walk8 <- formatData(walk8)
walk8 <- subset(walk8, list>250 & list<1100)
w8 <- createGraph(walk8)

walk9 <- read.csv("~/Activity-Recognition/Data/Walking_Samples/walk9.csv", header = FALSE, sep = '\t')
walk9 <- formatData(walk9)
walk9 <- subset(walk9, list>100 & list<1250)
w9 <- createGraph(walk9)

walk10 <- read.csv("~/Activity-Recognition/Data/Walking_Samples/walk10.csv", header = FALSE, sep = '\t')
walk10 <- formatData(walk10)
walk10 <- subset(walk10, list>100 & list<1000)
w10 <- createGraph(walk10)

walk11 <- read.csv("~/Activity-Recognition/Data/Walking_Samples/walk11.csv", header = FALSE, sep = '\t')
walk11 <- formatData(walk11)
walk11 <- subset(walk11, list>200 & list<1100)
w11 <- createGraph(walk11)

walk12 <- read.csv("~/Activity-Recognition/Data/Walking_Samples/walk12.csv", header = FALSE, sep = '\t')
walk12 <- formatData(walk12)
walk12 <- subset(walk12, list>200 & list<1100)
w12 <- createGraph(walk12)

walk13 <- read.csv("~/Activity-Recognition/Data/Walking_Samples/walk13.csv", header = FALSE, sep = '\t')
walk13 <- formatData(walk13)
walk13 <- subset(walk13, list>150 & list<800)
w13 <- createGraph(walk13)

walk14 <- read.csv("~/Activity-Recognition/Data/Walking_Samples/walk14.csv", header = FALSE, sep = '\t')
walk14 <- formatData(walk14)
walk14 <- subset(walk14, list>200 & list<800)
w14 <- createGraph(walk14)
