install.packages("ellipse")

library("ellipse")

data('iris')
dataset<-iris


x<-dataset[,1:4]

y<-dataset[1,5]

par(mfrow=c(1,4))
for (i in 1:4){
  boxplot(x[,i], main=names(dataset)[i])
}


plot(y)


featurePlot(x=x,y=y, plot='ellipse')


# NOT RUN {
x <- matrix(rnorm(50*5),ncol=5)
y <- factor(rep(c("A", "B"),  25))

trellis.par.set(theme = col.whitebg(), warn = FALSE)
featurePlot(x, y, "ellipse")
featurePlot(x, y, "strip", jitter = TRUE)
featurePlot(x, y, "box")
featurePlot(x, y, "pairs")

# }









library(ISLR)
library(ggplot2)
library(caret)
data(Wage)
training <- Wage

filename <- sprintf("images/wage%%03d.png")

obj <- featurePlot(x=training[,c("age","education","jobclass")],
                   y = training$wage,
                   plot="pairs")

png(filename)
print(obj)
dev.off()














