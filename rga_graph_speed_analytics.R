# You realy got to open http://docs.ggplot2.org/ on a Browser tab now! It's awesome...
# Need to fix xlab a bit
m <- ggplot(data=subset(final_dataset,avgPLGroupNum<12), aes(x=avgPLGroup))
m + geom_histogram(aes(y = ..count..)) + geom_density(fill=NA) + geom_histogram(aes(fill = ..count..)) 

# Let's get the histogram per category now...
m + geom_histogram(aes(y = ..count..)) + geom_density(fill=NA) + geom_histogram(aes(fill = ..count..)) + facet_grid (. ~ pageGroup) 

# and a sense of the distribution of load times per month
qplot(factor(yearmo), avgPageLoadTime, data = subset(final_dataset,yearmo>201208 & isMobile=='No'), geom = "boxplot",outlier.colour = "red", outlier.size = 1) + ylim(0, 20) + facet_grid(. ~ pageGroup) + labs(title = "Page Load (in secs) for Desktop",x="Year-Month")
