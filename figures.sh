
JPGQUALITY=50
PDFRESOLUTION=200
WIDTH=1500
HEIGHT=1000
HORIZONTALPADDING=10
VERTICALPADDING=10

montage figuresraw/freqperturb.png figuresraw/freqperturb_legend.png -tile 1x2 -geometry +"$HORIZONTALPADDING"+"$VERTICALPADDING" -resize "$WIDTH"x figuresraw/tmp1.png
montage figuresraw/choice_noinfo.png figuresraw/choice_noinfo_legend.png -tile 1x2 -geometry +"$HORIZONTALPADDING"+"$VERTICALPADDING" -resize "$WIDTH"x figuresraw/tmp2.png
montage figuresraw/choice_longperturb.png figuresraw/choice_longperturb_legend.png -tile 1x2 -geometry +"$HORIZONTALPADDING"+"$VERTICALPADDING" -resize "$WIDTH"x figuresraw/tmp3.png
convert figuresraw/tmp1.png -gravity North -extent x2500 figuresraw/tmp1b.png
convert figuresraw/tmp1b.png -gravity South -chop 0x100 figuresraw/tmp1c.png
convert figuresraw/tmp2.png -gravity South -chop 0x100 figuresraw/tmp2b.png
convert figuresraw/tmp3.png -gravity North -extent x2500 figuresraw/tmp3b.png
convert figuresraw/tmp3b.png -gravity South -chop 0x100 figuresraw/tmp3c.png
montage figuresraw/tmp1c.png figuresraw/tmp2b.png figuresraw/tmp3c.png -tile 3x1 -geometry +"$HORIZONTALPADDING"+"$VERTICALPADDING" -resize x"$HEIGHT" -border 2 -bordercolor Black figures/Fig1.png
rm figuresraw/tmp1.png figuresraw/tmp2.png figuresraw/tmp3.png figuresraw/tmp1b.png figuresraw/tmp3b.png figuresraw/tmp1c.png figuresraw/tmp3c.png
