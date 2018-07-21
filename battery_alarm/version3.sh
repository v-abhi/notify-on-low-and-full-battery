#!bin/bash


# to change your lowest remainder battery level to another value . Then Replace 30 with any other value.





cat '/sys/class/power_supply/BAT1/capacity' > /dev/null 2>&1
RESULT1=$?
cat '/sys/class/power_supply/BAT0/capacity' > /dev/null 2>&1
RESULT2=$?
cat '/sys/class/power_supply/battery/capacity' > /dev/null 2>&1
RESULT3=$?



if [ $RESULT1 == 0 ]; then
  hello1 ()
	{
		present=`cat '/sys/class/power_supply/BAT1/capacity'`
		
		if [ $present -lt 30 ];
			then
				xdg-open 'battery_low.jpg'
				echo "battery low" >> battery_data
				date >> battery_data
				echo >> battery_data
				sleep 100
				hello2
		elif [ $present -eq 100 ];
			then
				xdg-open 'battery_full.png'
				echo "battery full" >> battery_data
				date >> battery_data
				sleep 100
				hello2
				
		else
				sleep 200
				hello2
			fi
	}


  hello2 ()
	{
		present=`cat '/sys/class/power_supply/BAT1/capacity'`
		
		if [ $present -lt 30 ];
			then
				xdg-open 'battery_low.jpg'
				echo "battery low" >> battery_data
				date >> battery_data
				echo >> battery_data
				sleep 100
				hello1
		elif [ $present -eq 100 ];
			then
				xdg-open 'battery_full.png'
				echo "battery full" >> battery_data
				date >> battery_data
				sleep 100
				hello1
		else
				sleep 200
				hello1
			fi
	}

	hello1
	  
  
elif [ $RESULT2 == 0 ]; then
  hello1 ()
	{
		present=`cat '/sys/class/power_supply/BAT0/capacity'`
		
		if [ $present -lt 30 ];
			then
				xdg-open 'battery_low.jpg'
				echo "battery low" >> battery_data
				date >> battery_data
				echo >> battery_data
				sleep 100
				hello2
		elif [ $present -eq 100 ];
			then
				xdg-open 'battery_full.png'
				echo "battery full" >> battery_data
				date >> battery_data
				sleep 100
				hello2
				
		else
				sleep 200
				hello2
			fi
	}


  hello2 ()
	{
		present=`cat '/sys/class/power_supply/BAT0/capacity'`
		
		if [ $present -lt 30 ];
			then
				xdg-open 'battery_low.jpg'
				echo "battery low" >> battery_data
				date >> battery_data
				echo >> battery_data
				sleep 100
				hello1
		elif [ $present -eq 100 ];
			then
				xdg-open 'battery_full.png'
				echo "battery full" >> battery_data
				date >> battery_data
				sleep 100
				hello1
		else
				sleep 200
				hello1
			fi
	}

	hello1

  
  
elif [ $RESULT2 == 0 ]; then
  hello1 ()
	{
		present=`cat '/sys/class/power_supply/battery/capacity'`
		
		if [ $present -lt 30 ];
			then
				xdg-open 'battery_low.jpg'
				echo "battery low" >> battery_data
				date >> battery_data
				echo >> battery_data
				sleep 100
				hello2
		elif [ $present -eq 100 ];
			then
				xdg-open 'battery_full.png'
				echo "battery full" >> battery_data
				date >> battery_data
				sleep 100
				hello2
				
		else
				sleep 200
				hello2
			fi
	}


  hello2 ()
	{
		present=`cat '/sys/class/power_supply/battery/capacity'`
		
		if [ $present -lt 30 ];
			then
				xdg-open 'battery_low.jpg'
				echo "battery low" >> battery_data
				date >> battery_data
				echo >> battery_data
				sleep 100
				hello1
		elif [ $present -eq 100 ];
			then
				xdg-open 'battery_full.png'
				echo "battery full" >> battery_data
				date >> battery_data
				sleep 100
				hello1
		else
				sleep 200
				hello1
			fi
	}

	hello1
	  
  
  
  
else
  echo failed
  
  
fi



