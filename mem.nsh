@echo -off
# Works on EGS / SPR / Archer City
:git https://github.com/richards-AMI/mem.nsh


:START
# for serial debug log / human
	echo " "
	echo " "
	echo "* ************************************ * ************************************ *"
	echo "* ************************************ * ************************************ *"
	date
	time 
	echo "* ************************************ * ************************************ *"
	memmap


set -v FN AMI_mem.log

# If a filename is provided by user
if  x%1 ne x  then  
	set -v FN %1
else
	echo mem.nsh LB.log
endif

	
# save to a file
# logic to check existence file name on command line.
# but, not checking for a valid filename.
  
	date > %FN%
	time >> %FN%
	echo "* ************************************ * ************************************ *" >> %FN%
	memmap >> %FN%
	echo " " >> %FN%

:DONE
# Tail of serial log / human
	echo " "
	echo " "
	echo "* ************************************ * ************************************ *"
	echo "* ************************************ * ************************************ *"
	echo " "
	echo " "
:END