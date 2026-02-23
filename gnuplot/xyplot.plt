#! /usr/bin/env gnuplot -c
# Usage gnuplot -c xyplot.plg data_file graph.png

# Set terminal type (e.g., for display or output file)
set terminal pngcairo font "FiraCode Nerd Font,12"
set terminal png
set output ARG2

# Set plot title and axis labels
set title "RSS memeory usage(kB) over Time"
set xlabel "Time"
set ylabel "Memory usage (kB)"

# Enable grid for better readability
set grid

stats ARG1 using 1 nooutput
plot ARG1 using ($1 - STATS_min + 20):2 with lines
