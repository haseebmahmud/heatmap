# Calendar Heatmap 

Input: One date column and a data column

Main package: ggTimeSeries

### Loading the libraries
    library(ggTimeSeries)
    library(data.table)
    library(readr)
    library(viridis)
    
### Loading data file
data <- read_csv("data.csv")

### Basic plot

    p1 <- ggplot_calendar_heatmap(data, 'Date', 'Values')
    p1

![Fig: 1](https://github.com/haseebmahmud/heatmap/blob/master/p1.png)

### Gradient fill

    p2 <- p1 + scale_fill_continuous(type = "gradient") + facet_wrap(~Year, ncol = 1)
    p2

![Fig: 2](https://github.com/haseebmahmud/heatmap/blob/master/p2.png)

### Basic viridis fill

    p3 <- p1 + scale_fill_continuous(type = "viridis") + facet_wrap(~Year, ncol = 1)
    p3

![Fig: 3](https://github.com/haseebmahmud/heatmap/blob/master/p3.png)

### Viridis magma fill

    p4 <- p1 + scale_fill_viridis(option="magma") + facet_wrap(~Year, ncol = 1) + xlab(NULL) + ylab(NULL) 
    p4

![Fig: 4](https://github.com/haseebmahmud/heatmap/blob/master/p4.png)

### Viridis inferno fill

    p5 <- p1 + scale_fill_viridis(option="inferno") + facet_wrap(~Year, ncol = 1) + xlab(NULL) + ylab(NULL) 
    p5

![Fig: 5](https://github.com/haseebmahmud/heatmap/blob/master/p5.png)

### Viridis cividis fill

    p6 <- p1 + scale_fill_viridis(option="cividis") + facet_wrap(~Year, ncol = 1) + xlab(NULL) + ylab(NULL) 
    p6

![Fig: 6](https://github.com/haseebmahmud/heatmap/blob/master/p6.png)
