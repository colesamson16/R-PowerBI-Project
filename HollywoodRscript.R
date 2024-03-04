#read data file
df <-read.csv("C:/Users/darre/OneDrive/Documents/JustIT/Assignments/R&PowerBIAssignment/HollywoodsMostProfitableStories.csv")

#view data file
view(df)

#check data types
as.data.frame(sapply(df,class))

#display dataframe as a string
str(df)

#Check for missing values
colSums(is.na(df))

#drop missing values
df1 <- na.omit(df)

#check to make sure that the rows have been removed
colSums(is.na(df1))

#Summary Statistics
summary(df1)

#scatterplot
ggplot(df1, aes(x=Lead.Studio, y=Rotten.Tomatoes..)) + geom_point()+ scale_y_continuous(labels = scales::comma)+coord_cartesian(ylim = c(0, 110))+theme(axis.text.x = element_text(angle = 90))

#bar chart
ggplot(df1, aes(x=Year)) + geom_bar()

#export clean data
write.csv(df1, "clean_df.csv") 