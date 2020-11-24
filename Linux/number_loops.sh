#! /bin/bash
Number=(echo {0...9})
for Numb in ${Number[@]}
do
if [ $Numb = 3 ] || [ $Numb =5 ] || [ $Numb =7]
then
           echo $Numb
fi
done

