set terminal pngcairo size 1600,320
set output "dirty.png"
set title "Dirty Memory"
set grid xtics ytics
set xlabel "Time during test"
set ylabel "Dirty Memory kB"
set xdata time
set timefmt "%s"
plot "< gzip -dc dirtydata.txt.gz" using 1:2 with lines

