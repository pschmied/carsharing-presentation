library(ggplot2)

## CarShare and Age - Person Trips
## age     Trips
## Under 5 194.7309
## 18-24  748.82
## 25-34   2778.0236
## 35-44   1439.3152
## 45-54   470.5994
## 55-64   373.3229
## 65-74   540.2428
## 85 or older     228.0307

## Taxi Share and Age
## age     SumOfexpwt_final
## 18-24  419.227
## 25-34   3599.1294
## 35-44   711.9531
## 45-54   39.6774
## 55-64   109.15
## 75-84   354.6868

taxishare <- data.frame(
    age = c("18-24", "25-34", "35-44", "45-54", "55-64", "75-84"),
    trips = c(419.227, 3599.1294, 711.9531, 39.6774, 109.15, 354.6868))

carshare <- data.frame(
    age = factor(c("Under 5", "18-24", "25-34", "35-44", "45-54", "55-64", "65-74", "85 or older"),
                 levels=c("Under 5", "18-24", "25-34", "35-44", "45-54", "55-64", "65-74", "85 or older")),
    trips = c(194.7309, 748.82, 2778.0236, 1439.3152, 470.5994, 373.3229, 540.2428, 228.0307))


taxip <- ggplot(taxishare, aes(x=age, y=trips)) + geom_bar(stat="identity") + theme_bw()
ggsave("./fig/taxip.pdf", taxip, height=6, width=8, units="in")

carp <- ggplot(carshare, aes(x=age, y=trips)) + geom_bar(stat="identity") + theme_bw()
ggsave("./fig/carp.pdf", carp, height=6, width=8, units="in")
