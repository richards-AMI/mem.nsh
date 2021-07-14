echo -off

# for serial debug log / human
	echo " "
	echo " "
	echo "* ************************************ * ************************************ *"
	echo "* ************************************ * ************************************ *"
	date
	time 
	echo "* ************************************ * ************************************ *"
	memmap

	
# save to a file
# logic to check existence file name on command line.
# but, not checking for a valid filename.
if  x%1 ne x  then  
	date > %1
	time >> %1
	echo "* ************************************ * ************************************ *" >> %1
	memmap >> %1
	echo " " >> %1
	
else
	date > AMI_MEM.log
	time >> AMI_MEM.log
	echo "* ************************************ * ************************************ *" >> AMI_MEM.log
	memmap >> AMI_MEM.log
	echo " " >> AMI_MEM.log	

endif

# Tail of serial log / human
	echo " "
	echo " "
	echo "* ************************************ * ************************************ *"
	echo "* ************************************ * ************************************ *"
	echo " "
	echo " "