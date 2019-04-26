set terminal pdf
set output 'BiasVisualization_Proportionate.pdf'

set title "Effect of Proportionate Bias Strategy ({/Times-Italic X/(1-P)})\n{/*0.8 {/Times-Italic x} from triangle distribution {/Times-Italic [X-PX,X+PX]}, {/Times-Italic P=50%}}"
set xlabel ''
set xtics nomirror out rotate by -30 ("{/Times-Italic X-PX}" 0.5, "{/Times-Italic X}" 1, "{/Times-Italic X+PX}" 1.5, "{/Times-Italic (X+PX)/(1-PX)}" 3)
set ylabel 'Probability'
set ytics ("" 0, "" 1)
set key inside right top vertical width 1.5 box
plot [0:3.5] [0:1.1] '-' title '{/Times-Italic X}' with filledcurves x1, \
	'-' title '{/Times-Italic X/(1-PX)}' with lines lw 3
0.5 0
1 1
1.5 0
e
1 0
2 1
3 0
e
