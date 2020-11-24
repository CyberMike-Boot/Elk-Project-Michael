#! /bin/bash
states=('Nebraska' 'Hawaii' 'California' 'Maryland' 'Pennsylvannia')
for State in ${States[@]}
do
          if [ $State == 'Hawaii'];
          then
                echo  'Hawaii is the best'
          else
                 echo  'I am not fond of Hawaii'
           fi

done

