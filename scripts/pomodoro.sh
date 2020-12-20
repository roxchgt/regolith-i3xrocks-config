#!/usr/bin/bash


LABEL_COLOR=${label_color:-$(xrescat i3xrocks.label.color "#7B8394")}
VALUE_FONT=${font:-$(xrescat i3xrocks.value.font "Source Code Pro Medium 13")}
BUTTON=${button:-}
echo $BUTTON
bar="·····"

function pomo() {
    rest=5
    finished=0
    while [ $finished -eq 0 ]; do
	    bar=
	    for i in $(seq 1 $rest);do bar+="·";done
	    echo "<span font_desc=\"${VALUE_FONT}\">$bar</span>"
	    sleep 5
	    rest=$(expr $rest - 1)
	    if [[ $rest -eq 0 ]];then finished=1;fi
    done
   }

while [[ "x${BUTTON}" != "x1" ]]; do
	echo "<span font_desc=\"${VALUE_FONT}\">$bar</span>"
	sleep 5
done

pomo
