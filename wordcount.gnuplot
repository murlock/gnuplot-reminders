# heavily inspired by http://gnuplot.sourceforge.net/demo/histograms.html
set title "Comparaison between HDFS and S3A"
set auto x
set yrange [0:4000]
set style data histogram
set style histogram cluster gap 1
set style fill solid border -1
set boxwidth 0.9
set xtic rotate by -45 scale 0
set datafile separator ","

set label "in seconde, lower is better" at screen 0.5, 0.9 center font "Arial,8"

set term png
set output "wordcount.png"

plot 'wordcount.csv' using 2:xtic(1) ti col, '' u 3 ti col
# pause mouse
