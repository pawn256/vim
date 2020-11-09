for i in {0..255}
do
    echo -n -e "\e[38;05;${i}m $(printf %03d $i)"
    [ $((${i} % 16)) -eq 15 ] && echo; 
done
