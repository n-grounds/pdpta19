set terminal pdf
set output 'BiasVisualization_Simple.pdf'

set title "Effect of Simple Bias Strategy ({/Times-Italic X*(1+P)})\n{/*0.8 {/Times-Italic x} from triangle distribution {/Times-Italic [X-PX,X+PX]}, {/Times-Italic P=50%}}"
set xlabel ''
set xtics nomirror out rotate by -30 ("{/Times-Italic X-PX}" 0.5, "{/Times-Italic (X-PX)(1+P)}" 0.75, "{/Times-Italic X}" 1, "{/Times-Italic X+PX}" 1.5, "{/Times-Italic (X+PX)(1+P)}" 2.25)
set ylabel 'Probability'
set ytics ("" 0, "" 1)
set key inside right top vertical width 1.5 box
plot [0:3.5] [0:1.1] '-' title '{/Times-Italic X}' with filledcurves x1, \
	'-' title '{/Times-Italic X(1+e}_1{/Times-Italic )}' with lines lw 3
0.5 0
1 1
1.5 0
e
0.75 0
1.5 1
2.25 0
e
