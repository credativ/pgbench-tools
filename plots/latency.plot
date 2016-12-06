set terminal pngcairo size 1600,800  font 'Verdana,8'
set output "latency.png"
set title "Latency"
set grid xtics ytics
set xlabel "Time during test"
set ylabel "Latency (ms)"
set pointsize .005
set logscale y
#set yrange[0.05:50]
set xdata time
set timefmt "%s"
plot "< gzip -dc latency.txt.gz" using 1:2

