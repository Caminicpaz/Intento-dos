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


Getting and cleaning data , SEMANA 2

ucscDb <- dbConnect(MySQL(), user="genome",host="genome-mysql.cse.ucsc.edu")

result <- dbGetQuery(ucscDb,"show databases;"); dbDisconnect(ucscDb);


