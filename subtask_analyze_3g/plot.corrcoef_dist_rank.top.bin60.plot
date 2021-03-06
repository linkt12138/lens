##################################################################
## all

reset
set terminal postscript eps enhanced color 28
# set terminal png enhanced 28 size 800,600
# set terminal jpeg enhanced font helvetica 28
set size ratio 0.7

data_dir = "../processed_data/subtask_analyze_3g/stat/"
fig_dir  = "../processed_data/subtask_analyze_3g/stat/figures/"
file_name = ""
fig_name  = "corrcoef_dist_rank.top.all.bin60"
set output fig_dir.fig_name.".eps"

set xlabel '{/Helvetica=28 Distance (km)}'
set ylabel '{/Helvetica=28 Correlation Coefficient}'

set tics font "Helvetica,24"
set xtics nomirror
set ytics nomirror
set xtics rotate by 0
# set format x "10^{%L}"

set xrange [0:]
set yrange [:]

# set logscale x
# set logscale y

# set key right top
set key Left above reverse nobox spacing 1
# set nokey

set style line 1 lc rgb "red"     lt 1 lw 5 pt 1 ps 1.5 pi -1  ## +
set style line 2 lc rgb "blue"    lt 2 lw 5 pt 2 ps 1.5 pi -1  ## x
set style line 3 lc rgb "#00CC00" lt 5 lw 5 pt 3 ps 1.5 pi -1  ## *
set style line 4 lc rgb "#7F171F" lt 4 lw 5 pt 4 ps 1.5 pi -1  ## box
set style line 5 lc rgb "#FFD800" lt 3 lw 5 pt 5 ps 1.5 pi -1  ## solid box
set style line 6 lc rgb "#000078" lt 6 lw 5 pt 6 ps 1.5 pi -1  ## circle
set style line 7 lc rgb "#732C7B" lt 7 lw 5 pt 7 ps 1.5 pi -1
set style line 8 lc rgb "black"   lt 8 lw 5 pt 8 ps 1.5 pi -1  ## triangle
set pointintervalbox 2  ## interval to a point

# plot data_dir.file_name.".txt" using 1:3 with lines ls 2 title '{/Helvetica=28 TITLE_1}', \
#      data_dir.file_name.".txt" using 1:2 with lines ls 1 notitle

plot \
data_dir."corrcoef_dist_rank.all.bin60.txt" using 1:2 with linespoints ls 1 title '{/Helvetica=28 Total}', \
data_dir."corrcoef_dist_rank.top1.all.bin60.txt" using 1:2 with linespoints ls 2 title '{/Helvetica=28 Cell #1}', \
data_dir."corrcoef_dist_rank.top2.all.bin60.txt" using 1:2 with linespoints ls 3 title '{/Helvetica=28 Cell #2}', \
data_dir."corrcoef_dist_rank.top3.all.bin60.txt" using 1:2 with linespoints ls 4 title '{/Helvetica=28 Cell #3}', \
data_dir."corrcoef_dist_rank.top4.all.bin60.txt" using 1:2 with linespoints ls 5 title '{/Helvetica=28 Cell #4}'


##################################################################
## dl

reset
set terminal postscript eps enhanced color 28
# set terminal png enhanced 28 size 800,600
# set terminal jpeg enhanced font helvetica 28
set size ratio 0.7

data_dir = "../processed_data/subtask_analyze_3g/stat/"
fig_dir  = "../processed_data/subtask_analyze_3g/stat/figures/"
file_name = ""
fig_name  = "corrcoef_dist_rank.top.dl.bin60"
set output fig_dir.fig_name.".eps"

set xlabel '{/Helvetica=28 Distance (km)}'
set ylabel '{/Helvetica=28 Correlation Coefficient}'

set tics font "Helvetica,24"
set xtics nomirror
set ytics nomirror
set xtics rotate by 0
# set format x "10^{%L}"

set xrange [0:]
set yrange [:]

# set logscale x
# set logscale y

# set key right top
set key Left above reverse nobox spacing 1
# set nokey

set style line 1 lc rgb "red"     lt 1 lw 5 pt 1 ps 1.5 pi -1  ## +
set style line 2 lc rgb "blue"    lt 2 lw 5 pt 2 ps 1.5 pi -1  ## x
set style line 3 lc rgb "#00CC00" lt 5 lw 5 pt 3 ps 1.5 pi -1  ## *
set style line 4 lc rgb "#7F171F" lt 4 lw 5 pt 4 ps 1.5 pi -1  ## box
set style line 5 lc rgb "#FFD800" lt 3 lw 5 pt 5 ps 1.5 pi -1  ## solid box
set style line 6 lc rgb "#000078" lt 6 lw 5 pt 6 ps 1.5 pi -1  ## circle
set style line 7 lc rgb "#732C7B" lt 7 lw 5 pt 7 ps 1.5 pi -1
set style line 8 lc rgb "black"   lt 8 lw 5 pt 8 ps 1.5 pi -1  ## triangle
set pointintervalbox 2  ## interval to a point

# plot data_dir.file_name.".txt" using 1:3 with lines ls 2 title '{/Helvetica=28 TITLE_1}', \
#      data_dir.file_name.".txt" using 1:2 with lines ls 1 notitle

plot \
data_dir."corrcoef_dist_rank.dl.bin60.txt" using 1:2 with linespoints ls 1 title '{/Helvetica=28 Total}', \
data_dir."corrcoef_dist_rank.top1.dl.bin60.txt" using 1:2 with linespoints ls 2 title '{/Helvetica=28 Cell #1}', \
data_dir."corrcoef_dist_rank.top2.dl.bin60.txt" using 1:2 with linespoints ls 3 title '{/Helvetica=28 Cell #2}', \
data_dir."corrcoef_dist_rank.top3.dl.bin60.txt" using 1:2 with linespoints ls 4 title '{/Helvetica=28 Cell #3}', \
data_dir."corrcoef_dist_rank.top4.dl.bin60.txt" using 1:2 with linespoints ls 5 title '{/Helvetica=28 Cell #4}'


##################################################################
## ul

reset
set terminal postscript eps enhanced color 28
# set terminal png enhanced 28 size 800,600
# set terminal jpeg enhanced font helvetica 28
set size ratio 0.7

data_dir = "../processed_data/subtask_analyze_3g/stat/"
fig_dir  = "../processed_data/subtask_analyze_3g/stat/figures/"
file_name = ""
fig_name  = "corrcoef_dist_rank.top.ul.bin60"
set output fig_dir.fig_name.".eps"

set xlabel '{/Helvetica=28 Distance (km)}'
set ylabel '{/Helvetica=28 Correlation Coefficient}'

set tics font "Helvetica,24"
set xtics nomirror
set ytics nomirror
set xtics rotate by 0
# set format x "10^{%L}"

set xrange [0:]
set yrange [:]

# set logscale x
# set logscale y

# set key right top
set key Left above reverse nobox spacing 1
# set nokey

set style line 1 lc rgb "red"     lt 1 lw 5 pt 1 ps 1.5 pi -1  ## +
set style line 2 lc rgb "blue"    lt 2 lw 5 pt 2 ps 1.5 pi -1  ## x
set style line 3 lc rgb "#00CC00" lt 5 lw 5 pt 3 ps 1.5 pi -1  ## *
set style line 4 lc rgb "#7F171F" lt 4 lw 5 pt 4 ps 1.5 pi -1  ## box
set style line 5 lc rgb "#FFD800" lt 3 lw 5 pt 5 ps 1.5 pi -1  ## solid box
set style line 6 lc rgb "#000078" lt 6 lw 5 pt 6 ps 1.5 pi -1  ## circle
set style line 7 lc rgb "#732C7B" lt 7 lw 5 pt 7 ps 1.5 pi -1
set style line 8 lc rgb "black"   lt 8 lw 5 pt 8 ps 1.5 pi -1  ## triangle
set pointintervalbox 2  ## interval to a point

# plot data_dir.file_name.".txt" using 1:3 with lines ls 2 title '{/Helvetica=28 TITLE_1}', \
#      data_dir.file_name.".txt" using 1:2 with lines ls 1 notitle

plot \
data_dir."corrcoef_dist_rank.ul.bin60.txt" using 1:2 with linespoints ls 1 title '{/Helvetica=28 Total}', \
data_dir."corrcoef_dist_rank.top1.ul.bin60.txt" using 1:2 with linespoints ls 2 title '{/Helvetica=28 Cell #1}', \
data_dir."corrcoef_dist_rank.top2.ul.bin60.txt" using 1:2 with linespoints ls 3 title '{/Helvetica=28 Cell #2}', \
data_dir."corrcoef_dist_rank.top3.ul.bin60.txt" using 1:2 with linespoints ls 4 title '{/Helvetica=28 Cell #3}', \
data_dir."corrcoef_dist_rank.top4.ul.bin60.txt" using 1:2 with linespoints ls 5 title '{/Helvetica=28 Cell #4}'


