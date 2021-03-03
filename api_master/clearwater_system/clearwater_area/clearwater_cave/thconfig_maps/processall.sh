for i in * 
do
    if test -f "$i" 
    then
       therion $i
    fi
done
