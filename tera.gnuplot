# heavily inspired by http://gnuplot.sourceforge.net/demo/histograms.html
set title "Comparaison between HDFS and S3A"
set auto x
set yrange [0:3000]
set style data histogram
set style histogram cluster gap 1
set style fill solid border -1
set boxwidth 0.9
set xtic rotate by -45 scale 0
set datafile separator ","

set term png
set output "tera.png"

plot 'tera.csv' using 2:xtic(1) ti col, '' u 3 ti col, '' u 4 ti col
# pause mouse
