set terminal pngcairo size 1600,320 font 'Verdana,8'
set output "tps.png"
set title "TPS"
set grid xtics ytics
set xlabel "Time during test"
set ylabel "TPS"
set xdata time
set timefmt "%s"
plot "< gzip -dc tpsdata.txt.gz" using 1:2 with lines
