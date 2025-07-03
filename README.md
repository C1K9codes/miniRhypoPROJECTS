#wilcoxon signed rank test with simulated cancer drug treatment dataset and visualization using boxplot

##description- wilcoxon signed rank test is a non parametric test utilized when datasets are not uniform and has fluctuations. The tests are paired i.e done using before and after tests results.

##NO DOWNLOAD NEEDED/NO.csv FILE NEEDED THE DATA IS GENERATED IN Rscript 🔥:

###COMMAND SCRIPT TO GENERATE SIMULATED DATA AFTER TREATING PATIENTS WITH drugX
r 🥅:
> before<- c(150, 125, 180, 154, 145, 135, 139, 140, 160, 195) 
> after<- c(110, 110, 102, 132, 122, 99, 125, 110, 123, 111)
> df<- data.frame(patient = 1:10, Before= before, After= after)
> print(df)

##RESULTS AFTER  print(df) 🤠:

patient Before After
1        1    150   110
2        2    125   110
3        3    180   102
4        4    154   132
5        5    145   122
6        6    135    99
7        7    139   125
8        8    140   110
9        9    160   123
10      10    195   111

###COMMAND TO RUN WILCOXON TEST
r
> wilcox.test(before, after, paired = TRUE)
###RESULTS AFTER 🎉:
> 
Wilcoxon signed rank exact test
data:  before and after
V = 55, p-value = 0.001953
alternative hypothesis: true location shift is not equal to 0
###SUMMARY- the P-value shows the results are significant how? the value must be less than 0.005. however, value of 0.001 showed very significant changes after the treatment with the drugX. V value is highest showed the relations are positively correlated. 
####BOXPLOT for visulaization 🎆:

r
> boxplot(before, after, names = c("Before", "After"), col = c("salmon", "lightblue"), ylab= "tumor marker level", main= "wilcoxon test: Before vs After drugX")
###if says margins to big here's the trick 🤓:
> par(mar = c(5, 4, 4, 2))  # Bottom, left, top, right margins (default)
> par(mar = c(4, 4, 2, 1))  # shrink top/right

###BOXPLOT VISUAL
🤓:![wilcoxon test](https://github.com/user-attachments/assets/8e3ae23e-e566-4e0b-86c2-27790f797068)

