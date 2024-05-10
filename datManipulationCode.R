library(dplyr)

dat <- read.csv('OurDataset_train.csv')
str(dat)
View(dat)
dat1 <- subset(dat, label %in% c("shunil_gongopaddhay", "humayun_ahmed", "shomresh"))
str(dat1)

dat2 <- dat1 %>%
  group_by(label) %>%
  slice(1:3) %>%
  ungroup()
str(dat2)
View(dat2)
write.csv(dat2, file = "miniData.csv", row.names = FALSE)



dat3 <- dat %>%
  group_by(label) %>%
  slice(1:50) %>%
  ungroup()
ungroup(dat3)
str(dat3)
View(dat3)
write.csv(dat3, file = "macroData.csv", row.names = FALSE)

dat.1 <- read.csv("OurDataset_test.csv")

dat4 <- dat.1 %>% 
  group_by(label) %>% 
  slice(1:13) %>% 
  ungroup()
str(dat4)
write.csv(dat4, file = "macroTest.csv", row.names = FALSE)
