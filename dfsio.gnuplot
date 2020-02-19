# heavily inspired by http://gnuplot.sourceforge.net/demo/histograms.html
set auto x
set yrange [0:1500]
set style data histogram
set style histogram cluster gap 1
set style fill solid border -1
set boxwidth 0.9
set xtic rotate by -45 scale 0
set datafile separator ","

set label "in MB/s, higher is better" at screen 0.5, 0.9 center font "Arial,8"

set term png

set yrange [0:1000]
set title "DFSio 24 files 1 GB"
set output "dfsio-24f-1gb.png"
plot 'dfsio-24f-1gb.csv' using 2:xtic(1) ti col, '' u 3 ti col

set yrange [0:200]
set title "DFSio 24 files 1 GB"
set title "DFSio 24 files 100 GB"
set output "dfsio-24f-100gb.png"
plot 'dfsio-24f-100gb.csv' using 2:xtic(1) ti col, '' u 3 ti col

set yrange [0:600]
set title "DFSio 3 files 100 GB"
set output "dfsio-3f-100gb.png"
plot 'dfsio-3f-100gb.csv' using 2:xtic(1) ti col, '' u 3 ti col
