#!bin/bash



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


	
	
	
