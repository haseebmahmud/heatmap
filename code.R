library(ggTimeSeries)
library(data.table)
library(readr)
library(viridis)

data <- read_csv("data.csv")

# Basic Plot
p1 <- ggplot_calendar_heatmap(data, 'Date', 'Values')
p1

# Gradient fill
p2 <- p1 + scale_fill_continuous(type = "gradient") + facet_wrap(~Year, ncol = 1)
p2

# Basic viridis fill
p3 <- p1 + scale_fill_continuous(type = "viridis") + facet_wrap(~Year, ncol = 1)
p3

# Viridis magma fill
p4 <- p1 + scale_fill_viridis(option="magma") + facet_wrap(~Year, ncol = 1) + xlab(NULL) + ylab(NULL) 
p4

# Viridis inferno fill
p5 <- p1 + scale_fill_viridis(option="inferno") + facet_wrap(~Year, ncol = 1) + xlab(NULL) + ylab(NULL) 
p5

# Viridis cividis fill
p6 <- p1 + scale_fill_viridis(option="cividis") + facet_wrap(~Year, ncol = 1) + xlab(NULL) + ylab(NULL) 
p6