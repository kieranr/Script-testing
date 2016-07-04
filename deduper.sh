	for i in $( find ./ -type f )
	do
	echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	echo ${i}
	md5sum ${i}
	
	MD5LCL=$( md5sum ${i} | awk '{ print $1 }') 
	ls -al /mnt/hgfs/Photos/50D_7D/${i}
	
	md5sum /mnt/hgfs/Photos/50D_7D/${i} 
	MD5RMT=$( md5sum /mnt/hgfs/Photos/50D_7D/${i} | awk '{ print $1 }'  )
	
	echo  "Local - ${MD5LCL}"
	echo  "Remote - ${MD5RMT}"
	
	echo  "±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±"
	
	if [ "${MD5LCL}" = "${MD5RMT}" ] ; then
		echo "File - ${i} is the same "
		echo " rm ${i} "
		rm ${i} 
		echo "==================================="
	else
		echo "BOLLOX"
		echo "---------------------"
	fi
	done

