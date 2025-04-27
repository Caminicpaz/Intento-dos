# Intento-dos
Este es un repositorio de prueba
:)
title: "My first markdown"
author: "Camila Pazmiño"
date: '2022-04-14'
output: pdf_document
editor_options: 
  markdown: 
    wrap: 72
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)

``{r}

#BLOQUE 2 
#VIDEO 2: CONDICIONAMIENTO CON IF 
if(condition) {
    ## do something 
  } else { 
    ## do something else 
  } 

if(condition{ 
  ## do something 
} else if (condition2) { 
## do something different 
  } else { 
## do something different 
  }


if (x>3) {
  y <- 10 
} else {
    y <- 0 
  }


y <- if(x > 3) {
  10
} else {
0
}


#VIDEO 3: FOR LOOPS
x <- c("a", "b", "c", "d")

for (i in 1:4) {
    print(x[i])
}

#LAS SIGUIENTES FÓRMULAS SON LO MISMO QUE LA FÓRMULA DE ARRIBA

for (i in seq_along(x)) {
    print(x[i])
}

for (letter in x) {
    print(x[i])
}

for (i in 1:4) print(x[i])

#NESTED LOOPS (LOOPS DENTRO DE LOOPS)
x <- matrix(1:6, 2, 3)

for(i in seq_len(nrow(x))) {
  for(j in seq_len(ncol(x))) {
  print (x[i, j])
}
} 


#VIDEO 4: WHILE LOOPS
z <- 5

while(z >=3 && z <=10) {
  print(z)
  coin <- rbinom(1, 1, 0.5)
  if(coin = 1) { ##random walk
      z <- z + 1
  } else {
      z <- z - 1
  }
}


#VIDEO 5: REPEAT, NEXT, BREAK
#REPEAT
x0 <- 1

tol <- le-8
repeat {
  x1 <- computeEstimate()
  if (abs (x1 - x0) < tol) (
      break
} else {
      x0 <- x1
}
}

#NEXT
for(i in 1:100) {
  if(i <= 20) {
  ## Skip the first 20 iterations
next
  }
  ## Do something here
}


#VIDEO 6: MY 1ST R FUNCTION
add2<- function (x,y){ 
  x+y 
}

above10 <- function(x) { 
  use <- x > 10
  x[use] 
  
x <- 1:20
above <- function(x, n) { 
  use <- x > n
  x[use] 
}
 above(x,12) 

 #Poner valores default
above <- function(x, n=10) { 
  use <- x > n
  x[use] 
}

#PROMEDIO DE COLUMNAS
Columnmean <- function(y) { 
  nc <- ncol(y)
  means <- numeric(nc) 
  for(i in 1:nc) { 
    means [i] <- mean(y[,i]) 
    }
  means
}

#PROMEDIO DE COLUMNAS SIN NA
Columnmean <- function(y, removeNA = TRUE) { 
  nc <- ncol(y)
  means <- numeric(nc) 
  for(i in 1:nc) { 
    means [i] <- mean(y[,i], na.rm = removeNA) 
    }
  means
}

#VIDEO 7: FUNCIONES
#ARGUMENT MATCHING
> args (lm)
function (formula, data, subset, weights, na.action, method = "qr", model = TRUE, x = FALSE,
y = FALSE, qr = TRUE, singular.ok = TRUE,
contrasts = NULL, offset, ...)

#SON LO MISMO:
lm(data = mydata, y - x, model = FALSE, 1:100)
lm(y - x, mydata, 1:100, model = FALSE)
  

#VIDEO: SCOPING RULES (se trata de una función dentro de una función)
make.power <- function(n) {
  pow <- function(x) {
  x^n
}
pow
}

cube <- make.power(3)
cube (3)

square <- make.power(2)
square(3)

#VIDEO: TIME AND DAYS 
x <- Sys.time()

p <- as.POSIXlt(x)
names(unclass (p))

#SABER LA FECHA  
datestring <- c( "January 10, 2012 10:40", "December 9, 2011 9:10")
x <- strptime(datestring, "%B %d, %Y %H:%M")

#OPERATIONS ON DATES AND TIMES
#En un formato
x <- as.Date("2012-03-01") 
y <- as. Date("2012-02-28")
#En otro formato (POSIXct)
x <- as.POSIXct("2012-10-2501:00:00")
y <- as.POSIXct("2012-10-25 06:00:00", tz = "GHT")

trail <- read.csv("/Users/camilapazmino/Desktop/CCTV_Locations_Crime_Cameras.csv") 

trail2 <- read.table("/Users/camilapazmino/Desktop/CCTV_Locations_Crime_Cameras.csv", sep = ",", header = TRUE) 
```

#CURSO 3, SEMANA 1
if (!file.exists ("data")) {
dir.create("data")
}


Getting and cleaning data, SEMANA 1
Library(data.table)
DF = data.frame(x=rorm(9), y=rep/c("a", "b", "c"), each=3), z=rnorm(9))
head(DF,3)
head(DF,3)


library(XML)
fileURL <- "https://www.w3schools.com/xml/simple.xml"
doc <-xmlTreeParse(fileURL,useInternal=TRUE)
rootNode <- xmlRoot(doc)
xmlName(rootName)

fileURL <- "http://espn.go.com/nfl/team/_/name/bal/baltimore-ravens"
doc<-htmlTreeParse(fileURL,useInternal=TRUE)
scores&-xpathSApply(doc,"//Li(@class='score']",xm(Value)
teas <- xpathSApply(doc,"//Li[@class='team-name']",xmlValue)
scores

library(data.table)
DT = data.frame("x"=rnorm(9),"y"=rep(c("a","b","c"),each=3),"z"=rnorm(9))

head(DT,3)

tables()

DT[2,]

DT[DT$y="a",]

DT[c(2,3)]

DT[,list(mean(y),sum(y))]

DT[,w:=y^2] --> añadir nuevas columnas

DT[,table(y)]

DT[,m:= (tmp <- (x+z); log2(tmp+5)}] --> con muchas operaciones 

DT[,a:=y>0] --> añadir nueva columna con cosas verdadero y falso 

DT <- data.table(x=rep(c("a","b","c"),each=100), y=rnorm(300))
setkey(DT,x)
DT['a']

DT1 <- data.table(x=c("a"","a","b","dt1"), y=1:4)
DT2 <- data.table(x=c('a','b','dt2'), z=5:7)
setkey(DT1,x); setkey(DT2,x)
merge(DT1,DT2)

big_df <- data.frame(x=rnorm(1E6), y=rnorm(1E6))
file <- tempfile()
write.tab]e(big_df, filesfile, row.names=FALSE, col.names=TRUE, sep="'\t", quote=FALSE)
system.time(fread(file))

system.time(read.table(file,header=TRUE,sep="\t"))+


Getting and cleaning data, SEMANA 2

ucscDb <- dbConnect(MySQL(), user="genome",host="genome-mysql.cse.ucsc.edu")

result <- dbGetQuery(ucscDb,"show databases;"); dbDisconnect(ucscDb);

hg19 <- dbConnect(MySQL(),user="genome",db="hg19"',
host="genome-mysql.cse.ucsc.edu")
allTables<-dbListTables(hg19)
length(allTables)

library(XML)
url <- "http://scholar.google.com/citations?user-HI-I6COAAAAJ&hl=en"
html <- htmlTreeParse(url,useInternalNodes=T)
xpathSApply(html,"//title",xmlValue)

library(httr); html2 = GET(url)
content2 = content(html2,as="text")
parsedHtml = htmlParse(content2,asText=TRUE)
xpathSApply(parsedHtml,"//title",xmlValue)


Getting and cleaning data , SEMANA 3

set.seed(13435)
X <- data.frame("var1"=sample(1:5),"var2"=sample(6:10),"var3"=sample(11:15))
X <- X[sample(1:5),]; X$var2[c(1,3)] = NA
X

X[,1] --> primera columna

X[,"var1"] --> primera columna

X[1:2,"var2"]

X[ (X$var1 <= 3 & X$var3 > 11),] --> cosas LOGICAS, si la variable es igual a 3 Y mayor a 11

X[(X$var1 <= 3 | X$var3 > 15),] --> cosas LOGICAS, si la variable es igual a 3 O(|) mayor a 15

X[which(X$var2 > 8),] --> quita los NA

sort(X$var1)

sort (X$var1, decreasing=TRUE)

sort (X$var2, na.last=TRUE)

X[order(X$var1),] --> ordenar en orden ascendete todas las variable respecto a una variable

X[order(X$var1,X$var3),]

library(plyr)
arrange (X, var1)

arrange(X,desc(var1))

X$var4 <- rnorm(5) --> añadir columnas
X

Y <- cbind(X,rnorm(5)) 
Y

BAJAR INFO DE LA WEB
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://data.baltimorecity.gov/api/views/k5ry-ef3g/rows.csv?accessType=DOWNLOAD"
download.file(fileUrl,destfile="./data/restaurants.csv",method="curl")
trail <- read.csv("./data/restaurants.csv")

head(trail,n=3) --> 3 filas que estan en la cabeza

tail(trail,n=3) --> 3 filas que estan en la parte de abajo

summary(trail)

str(trail) --> da más información

quantile(trail$CAM_NUM,na.rm=TRUE)

quantile(trail$CAM_NUM,probs=c(0.5,0.75,0.9)) 

sum(is.na(trail$CAM_NUM)) --> check missing values

any(is.na(trail$CAM_NUM))

all(trail$CAM_NUM > 0)

colSums(is.na(trail)) --> row and column sums

all(colSums(is.na(trail))=0)

s1<- seq(1,10, by=2) ; s1

s2<- seq(1,10, length=3); s2

x <- c(1,3,8,25,100); seq(along = x)

Reshaping data

library(reshape2)
head(mtcars)

Melting data frames --> le identifica como variable id a "carname","gear","cyl", y como variable medible a "mpg","hp"

mtcars$carname <- rownames(mtcars)
carMelt <- melt(mtcars, id=c("carname","gear","cyl"),measure.vars=c("mpg","hp"))
head(carMelt,n=3)

cylData <- dcast(carMelt, cyl ~ variable)
cylData

cylData <- dcast (carMelt, cyl ~ variable, mean)
cylData

ddply(InsectSprays,.(spray),summarize,sum=sum(count))

spraySums <- ddply(InsectSprays,.(spray),summarize,sum-ave(count, FUN=sum))
dim(spraySums)

str(trail)

names(trail)

library(plyr)
head(select(trail,PROJ:created_date))
filter(trail,"XCOORD">30) -> lol
head(lol,10)

arrange(trail,created_date) -> loldated
head(loldated)

arrange(trail,desc(created_date)) -> loldatedd
head(loldatedd)

rename(trail, OBJECTID = CAMARA, NOTES = NOTAS) -> ctrail

SEMANA 4
if(!file.exists("./data")){dir.create("./data")}
fileUrl1= "https://dl.dropboxusercontent.com/u/7710864/data/reviews-apr29.csv"
fileUrl2= "https://dl.dropboxusercontent.com/u/7710864/data/solutions-apr29.csv"
download.file(fileUrl1,destfile="./data/reviews.csv",method="curl")
download.file(fileUrl2,destfile="./data/solutions.csv",method="curl")

reviews = read.csv("./data/reviews.csv");solutions <- read.csv("./data/solutions.csv")

head(reviews,2)

head(solutions,2)

Merges data frames
Important parameters: x,y,by,by.x,by.y, all

mergedData=merge(reviews,solutions,by.×="solution_id",by.y="id",all=TRUE)
head(mergedData)

Default - merge all common column names

intersect(names(solutions),names(reviews))

mergedData2= merge(reviews,solutions,all=TRUE)
head(mergedData2)

Fixing character vectors - tolower(), toupper()
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"
download.file(fileUrl,destfile="./data/cameras.csv",method-"curl")
cameraData<-read.csv("./data/cameras.csv")
names (cameraData)

tolower(names(cameraData))

Fixing character vectors - strsplit --> separa cosas separadas por puntos, etc

splitNames=strsplit(names(cameraData),"(\.")
splitNames [[6]]
-> Antes: location.1
-> Después: "location" "1"

Fixing character vectors - sapply()
splitNames [[6]] [1]
-> [1] "Location"

firstElement <- function(x){x[1]}
sapply(splitNames,firstElement)
-> [1] "address" "direction" "street" "crossStreet" "intersection" "Location"

Fixing character vectors - sub()

sub("_","", names (reviews),) --> quita el "_" y le reemplazo por "" los nombres de las varibles del documento reviews

Fixing character vectors - gsub()

testName <- "this_is_a_test"
sub("_","",testName)
gsub("_","",testName) --> Este ayuda a que se quiten TODOS los "_" o signos que se quieran quitar porque el de arriba solo quita el primer signo

Finding values - grep(),grepl()--> encontrar cosas

grep("'Alameda"',cameraData$intersection) --> encuentra en qué líneas están las cosas que estás buscando 

table(grepl("'Alameda",cameraData$intersection)) --> encuentra ecuántas cosas estás buscando 

grep("Alameda",cameraDatasintersection,value=TRUE) --> encuentra el contexto de la cosas que estás buscando 
-> "The Alameda & 33rd St" "E 33rd & The Alameda" "Harford \n & The Alameda"

More useful string functions

library(stringr)
nchar("Jeffrey Leek") --> número de caracteres

substr ("Jeffrey Leek", 1,7) --> substrae de la primera palabra 7 letras

paste("Jeffrey","Leek") --> le pone junto como "Jeffrey Leek"

paste0 ("Jeffrey","Leek") --> [1] "JeffreyLeek"

str trim("Jeff      ") --> hace que los espacios desaparezcan
"Jeff"

Regular expresions
^ -> busca al principio de la línea
$ -> busca al final de la línea. ej: morning$
[Bb] -> para que acepte y busque los lowercase y uppercase

Ej:
^[0-9] [a-zA-Z] -> se busca al principio de la línea cualquier # y letra

"." is used to refer to any character. So:
9.11 --> 9-11, 9/11

| --> Translates to "or"; we can use it to combine two expressions, the subexpressions being called alternatives
flood|fire

[Ggleorge( (wwl\.)? [Bb]ush --> si tiene interrogante significa que es OPCIONAL 

\. --> considerar que es el punto LITERAL y no el metacharacter como el del 9.11

(.*) -->The * and + signs are metacharacters used to indicate repetition; * means "any number, including
none, of the item" and + means "at least one of the item"

[Bb]ush( +[^ ]+ +){1,5} debate --> { and } are referred to as interval quantifiers; the let us specify the minimum and maximum number of matches of an expression. Aquí se trata de buscar Bush, seguido de un espacio ( + seguido de algo que NO sea un espacio [^]+ seguido de un espacio +). Las {} indican que esta indicaciçón que está en () se repiten de 1-5 veces hasta que llegue a debates. Bush con 5 palabras antes de que aparezca la palabra debate 

m.n means at least m but not more than n matches
m means exactly m matches
m, means at least m matches

matches of an expression

DATES

d1 = date()
class(d1)

d2 = Sys.Date()
class(d2)

-Formatting dates

%d = day as number (0-31), %a = abbreviated weekday, %A = unabbreviated weekday, %m = month (00-
12), %b = abbreviated month, %B = unabbrevidated month, %y = 2 digit year, %Y = four digit year

format (d2, "%a %b %d"")

-Creating dates

x = c("1jan1960","2jan1960","31mar1960","30jul1960")
as.Date(x,"%d%b%y") -> z
z

z[1]-z[2]

as.numeric(z[1]-z[2])

weekdays(d2) --> dia de la semana

months(d2) --> mes del año

Exploratory Data Analysis 
SEMANA 1

library(datasets)
data(cars)
with(cars, plot(speed, dist))

library(lattice)
state <- data.frame(state.x77, region = state.region)
xyplot(Life.Exp ~ Income | region, data = state, layout = c(4, 1))

library(ggplot2)
data(mpg)
qplot(displ, hwy, data = mpg)

library(datasets)
data(airquality)
hist(airquality$Ozone)

library(datasets)
with(airquality, plot(Wind, Ozone))

library(datasets)
airquality <- transform(airquality, Month = factor (Month))
boxplot(Ozone ~ Month, airquality, xlab = "Month", ylab = "Ozone (ppb)")

FUNCTIONS
pch: the plotting symbol (default is open circle)
lty: the line type (default is solid line), can be dashed, dotted, etc.
lwd: the line width, specified as an integer multiple
col: the plotting color, specified as a number, string, or hex code; the colors() function gives you
a vector of colors by name
xlab: character string for the x-axis label
ylab: character string for the v-axis label
las: the orientation of the axis labels on the plot
bg: the background color
mar: the margin size
oma: the outer margin size (default is O for all sides)
mfrow: number of plots per row, column (plots are filled row-wise)
mfcol: number of plots per row, column (plots are filled column-wise)
plot: make a scatterplot, or other type of plot depending on the class of the object being plotted
lines: add lines to a plot, given a vector x values and a corresponding vector of y values (or a 2-
column matrix); this function just connects the dots
points: add points to a plot
text: add text labels to a plot using specified x, y coordinates
title: add annotations to x, y axis labels, title, subtitle, outer margin
mtext: add arbitrary text to the margins (inner or outer) of the plot
axis: adding axis ticks/labels

with(airquality, plot(Wind, Ozone, main = "Ozone and Wind in New York City"))
with(subset (airquality, Month == 5), points(Wind, Ozone, col =
"blue")) --> los puntos azules son los que son del mes de mayo 

with(airquality, plot (wind, Ozone, main = "Ozone and Wind in New York City", type= "n"))
with(subset(airquality,Month == 5), points(Wind, Ozone, col = "blue"))
with(subset(airquality, Month != 5), points(Wind, Ozone, col = "red"))
legend("topright", Dch = 1, col = c("blue","red'), legend = c("May", "Other Months"))

with(airquality, plot(Wind, Ozone, main = "Ozone and Wind in New York City", pch = 20))
model <- lm(Ozone ~ Wind, airquality)
abline(model, lwd = 2)

par(mfrow = c(1, 2))
with(airquality,{
plot (Wind, Ozone, main = "Ozone and Wind")
plot (Solar.R, Ozone, main = "Ozone and Solar Radiation")
})

par(mfrow = c(1, 3), mar = c(4, 4, 2, 1), oma = c(0, 0, 2, 0))
with(airquality, {
plot (Wind, Ozone, main = "Ozone and Wind")
plot (Solar.R, Ozone, main = "Ozone and Solar Radiation")
plot (Temp, Ozone, main = "Ozone and Temperature")
mtext ("Ozone and Weather in New York City", outer = TRUE)
})

Copying a plot to another device 
• dev. copy: copy a plot from one device to another
• dev.Copv2pdf: specificallv copy a plot to a PDF file
NOTE: Copying a plot is not an exact operation, so the result may not be identical to the original.
library(datasets)
with(faithful,plot(eruptions,waiting))
## Create plot on screen device
title(main = "Old Faithful Geyser data")
## Add a main title
dev.copy (png, file = "geyserplot.png") ## Copy my plot to a PNG file
dev.off()
##Don't forget to close the PNG device!

Lattice Functions
xyplot: this is the main function for creating scatterplots
bwplot: box-and-whiskers plots ("boxplots")
histogram: histograms
stripplot: like a boxplot but with actual points
dotplot: plot dots on "violin strings"
splom: scatterplot matrix; like pairs in base plotting system
levelplot, contourplot: for plotting "image" data
Lattice functions generally take a formula for their first argument, usually of the form
xyplot(y ~ x | f * g, data)
• We use the formula notation here, hence the ~,
On the left of the ~ is the y-axis variable, on the right is the x-axis variable
• f and g are conditioning variables - they are optional
the * indicates an interaction between two variables

library(lattice)
library(datasets)
## Simple scatterplot
xyplot (Ozone ~ Wind, data = airquality)

library(datasets)
library(lattice)
## Convert 'Month' to a factor variable
airquality <- transform(airquality, Month = factor (Month))
xyplot (Ozone ~ Wind | Month, data = airquality, layout = c(5, 1))


SEMANA 3

set.seed(1)
par(mfrow = c(1, 1))
x <- rnorm(12, mean = rep(1:3, each = 4), sd = 0.2)
y <- rnorm(12, mean = rep(c(1, 2, 1), each = 4), sd = 0.2)
plot(x, y, col = "blue", pch = 19, cex = 2)
text (x + 0.05, y + 0.05, labels = as.character(1:12))

dataframe <- data.frame(x, y)
kmeansobj <- kmeans(dataFrame, centers = 3)
names(kmeansobj)

dataFrame <- data.frame(x = x, y = y)
dist(dataFrame)

#Nos ayuda a ver la distancia

par(mar = rep(0.2, 4))
plot(x, y, col = kmeansobj$cluster, pch = 19, cex = 2)
points(kmeansobj$centers, col = 1:3, pch = 3, cex = 3, lwd = 3)  

dataFrame <- data.frame(x = x, y = y)
distxy <- dist(dataFrame)
hClustering <- hclust(distxy)
plot(hClustering)
myplclust(hClustering, lab = rep(1:3, each = 4), lab.col = rep(1:3, each = 4))

dataFrame <- data.frame(x = x, y = y)
set.seed(143)
dataMatrix <- as.matrix(dataFrame)[sample(1:12),]
heatmap(dataMatrix)

set.seed(1234)
dataMatrix <-as.matrix(dataFrame)[sample(1:12), ]
kmeansobj2 <- kmeans(dataMatrix, centers = 3)
par(mfrow = c(1, 2), mar = c(2, 4, 0.1, 0.1))
image(t(dataMatrix)[, nrow(dataMatrix):1], yaxt = "n")
image(t(dataMatrix)[, order(kmeansobj$cluster)], yaxt = "n")

set.seed(678910)
for (i in 1:40) {
# flip a coin
coinFlip <- rbinom(1, size = 1, prob = 0.5)
# if coin is heads add a common pattern to that row
if (coinFlip) {
dataMatrix[i, ] <- dataMatrix[i, ] + rep(c(0,3), each = 5)
}
}

set.seed(12345)
par(mar = rep(0.2, 4))
dataMatrix <- matrix(rnorm(400), nrow = 40)
image(1:10, 1:40, t(dataMatrix) [, nrow(dataMatrix):1])

par(mar = rep(0.2, 4))
heatmap(dataMatrix)

set.seed(678910)
for (i in 1:40) {
#flip a coin
coinFlip <- rbinom(1, size = 1, prob = 0.5)
# if coin is heads add a common pattern to that row
if (coinFlip) {
dataMatrix[i, ] <- dataMatrixli, I + rep(c(0, 3), each = 5)
}
}

HOla!!! 2025
