for f in $(find -name 'logcat.log' | sort -u); do count=$(grep -i 'exception:' $f | sed 's/  */ /g' | grep -v 'Caused by:' | grep -v 'FATAL EXCEPTION' | grep -v ' W ' | sort -u); echo $f,$count ; done | tee human-log.log

for f in $(find -name 'logcat.log' | sort -u); do count=$(grep -i 'exception:' $f | sed 's/  */ /g' | grep -v 'Caused by:' | grep -v 'FATAL EXCEPTION' | grep -v ' W ' | cut -d ' ' -f7 | sort -u); echo $f,$count ; done | tee human-log-name.log
