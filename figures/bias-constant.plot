set terminal pdf
set output 'BiasVisualization_Constant.pdf'

set title "Effect of Constant Bias Strategy ({/Times-Italic X+C})\n{/*0.8 {/Times-Italic x} from triangle distribution {/Times-Italic [X-PX,X+PX]}, {/Times-Italic P=50%}, {/Times-Italic C=PX}}"
set xlabel ''
set xtics nomirror out rotate by -40 ("{/Times-Italic X-PX}" 0.5, "{/Times-Italic X}" 1, "{/Times-Italic X+PX}" 1.5, "{/Times-Italic X+2PX}" 2)
set ylabel 'Probability'
set ytics ("" 0, "" 1)
set key inside left top vertical width 1.5 box
plot [0:3.5] [0:1.1] '-' title '{/Times-Italic X}' with filledcurves x1, \
	'-' title '{/Times-Italic X+C}' with lines lw 3
0.5 0
1 1
1.5 0
e
1 0
1.5 1
2 0
e
