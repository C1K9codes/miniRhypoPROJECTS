#Spearman correlation between smoking pack years VS mutation count using nsclc_tcga_broad_2016_clinical_data
##first step is for better visualization install and load ggplot2 library

> install.packages("ggplot2")
> library(ggplot2)

##IMPORT DATA SET (clinical data set from cBioPortal) for any cancer type you like in this study the dataset I utilized was NSCLC pan analysis 2016.
##.tsv file can easily be uploaded via import datasets from txt

#This is a basic spearman correlation test only used when the variables in the data collected are not equally distributes .
##The study was designed to establish a correlation between to axis X= Person.Cigarette.Smoking.History.Pack.Year.Value and Y= Mutation.Count.
##R is highly case sensitive use caps/smalls wherever required

## COMMAND LINE FOR CORRELATION TEST
> cor.test(nsclc_tcga_broad_2016_clinical_data$Person.Cigarette.Smoking.History.Pack.Year.Value, nsclc_tcga_broad_2016_clinical_data$Mutation.Count, metho= "spearman")

## OUTPUT
###Rho= 0.16 (weak correlation but significant)
###p-value<0.001 (statistically significant)
##if the results along with the values showed cannot compute exact p-values with ties,, it shows they are safe to ignore as data had some repeated values
## visualize with ggplot2
> ggplot(
  data = nsclc_tcga_broad_2016_clinical_data,
  mapping = aes(
    x = Person.Cigarette.Smoking.History.Pack.Year.Value,
    y = Mutation.Count
  )
) +
  geom_point(
    color = "firebrick",
    alpha = 0.7,
    size = 2.5
  ) +
  geom_smooth(
    method = "lm",
    se = TRUE,
    color = "steelblue",
    linewidth = 1.2
  ) +
  labs(
    title = "Smoking Pack-Years vs Mutation Count",
    subtitle = expression(paste("Spearman ", rho, " = 0.162, ", italic("p") < 0.001)),
    x = "Smoking Pack-Year Value",
    y = "Mutation Count"
  ) +
  theme_minimal(base_size = 14) +
  theme(
    plot.title = element_text(face = "bold", size = 16),
    plot.subtitle = element_text(size = 13, margin = margin(b = 10)),
    axis.title = element_text(face = "bold"),
    axis.text = element_text(color = "black"),
    panel.grid.minor = element_blank()
  )
## results 

