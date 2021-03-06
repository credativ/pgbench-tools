set term pngcairo size 640,480
set output "clients.png"
set title "pgbench transactions/sec"
set grid xtics ytics
set samples 25
set xlabel "Clients"
set ylabel "TPS"
plot \
  "clients.txt" using 1:2 smooth csplines axis x1y1 title 'TPS' with linespoints
