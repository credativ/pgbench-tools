set terminal pngcairo size 1600,1280
set output "latency.png"
set title "Latency"
set grid xtics ytics
set xlabel "Time during test"
set ylabel "Latency (ms)"
set pointsize .1
set logscale y
set yrange[0.05:50]
set xdata time
set timefmt "%s"
plot "latency.txt" using 1:2

