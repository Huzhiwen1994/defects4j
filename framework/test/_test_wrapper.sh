fail_status_file=.test_failed.status
echo "    carton exec $1" # let the user know what's going on
carton exec ./$1  > /dev/null 2>&1 # start the test, route STDOUT to null
if [ $? -ne 0 ] ; then # if exit status is non zero  the fail status file
    echo $1 >> ${fail_status_file}
fi
