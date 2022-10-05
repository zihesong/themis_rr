cd /home/zoooe/workspaces/github/themis/scripts

timeout 65m python themis.py --no-headless --avd themis --apk ../APhotoManager/APhotoManager-0.6.4.180314-debug-#116.apk --time 1h -o ../humanoid-results-record-89659/ --humanoid --snapshot snap_2022-08-31_21-57-32 &
while true
    do
    {    
        activity_id=$(adb shell "ps | grep de.k3b.android.androFotoFinder")
        if [[ "$activity_id" =~ "k3b" ]];
        then
            echo "themis success"
            pid=$(adb shell "ps | grep de.k3b.android.androFotoFinder | tr -s ' '| cut -d ' ' -f 2")
            pid=($pid)
            while true
                do
                {
                    cur_pid=$(adb shell "ps | grep de.k3b.android.androFotoFinder | tr -s ' '| cut -d ' ' -f 2")
                    cur_pid=($cur_pid)
                    if [[ "$pid" != "$cur_pid" ]];
                    then
                        echo 'pid changed!'
                        sleep 5
                        ps aux | grep themis.py | awk '{print $2}'  | xargs sudo kill -9
                        ps aux | grep record.py | awk '{print $2}'  | xargs sudo kill -9
                        ps aux | grep emulator | awk '{print $2}'  | xargs sudo kill -9
                        break
                    fi
                    themis=$(ps aux | grep themis | wc -l)
                    if [ $themis = '1' ];
                    then
                        echo 'Themis finished!'
                        ps aux | grep themis.py | awk '{print $2}'  | xargs sudo kill -9
                        ps aux | grep record.py | awk '{print $2}'  | xargs sudo kill -9
                        ps aux | grep emulator | awk '{print $2}'  | xargs sudo kill -9
                        break                        
                    fi
                }
                done
            break
        fi
        sleep 3
    }
    done
echo "Finish themis"
sleep 20

timeout 65m python themis.py --no-headless --avd themis --apk ../WordPress/WordPress-vanilla-debug--#10302.apk --time 1h -o ../humanoid-results-record-89659/ --humanoid --snapshot snap_2022-08-31_22-20-18 &
while true
    do
    {    
        activity_id=$(adb shell "ps | grep org.wordpress.android")
        if [[ "$activity_id" =~ "wordpress" ]];
        then
            echo "themis success"
            pid=$(adb shell "ps | grep org.wordpress.android | tr -s ' '| cut -d ' ' -f 2")
            pid=($pid)
            while true
                do
                {
                    cur_pid=$(adb shell "ps | grep org.wordpress.android | tr -s ' '| cut -d ' ' -f 2")
                    cur_pid=($cur_pid)
                    if [[ "$pid" != "$cur_pid" ]];
                    then
                        echo 'pid changed!'
                        sleep 5
                        ps aux | grep themis.py | awk '{print $2}'  | xargs sudo kill -9
                        ps aux | grep record.py | awk '{print $2}'  | xargs sudo kill -9
                        ps aux | grep emulator | awk '{print $2}'  | xargs sudo kill -9
                        break
                    fi
                    themis=$(ps aux | grep themis | wc -l)
                    if [ $themis = '1' ];
                    then
                        echo 'Themis finished!'
                        ps aux | grep themis.py | awk '{print $2}'  | xargs sudo kill -9
                        ps aux | grep record.py | awk '{print $2}'  | xargs sudo kill -9
                        ps aux | grep emulator | awk '{print $2}'  | xargs sudo kill -9
                        break                        
                    fi
                }
                done
            break
        fi
        sleep 3
    }
    done
echo "Finish themis"
sleep 20

timeout 65m python themis.py --no-headless --avd themis --apk ../nextcloud/nextcloud-#1918.apk --time 1h -o ../humanoid-results-record-89659/ --humanoid --snapshot snap_2022-08-31_22-26-20 &
while true
    do
    {    
        activity_id=$(adb shell "ps | grep com.nextcloud.client")
        if [[ "$activity_id" =~ "nextcloud" ]];
        then
            echo "themis success"
            pid=$(adb shell "ps | grep com.nextcloud.client | tr -s ' '| cut -d ' ' -f 2")
            pid=($pid)
            while true
                do
                {
                    cur_pid=$(adb shell "ps | grep com.nextcloud.client | tr -s ' '| cut -d ' ' -f 2")
                    cur_pid=($cur_pid)
                    if [[ "$pid" != "$cur_pid" ]];
                    then
                        echo 'pid changed!'
                        sleep 5
                        ps aux | grep themis.py | awk '{print $2}'  | xargs sudo kill -9
                        ps aux | grep record.py | awk '{print $2}'  | xargs sudo kill -9
                        ps aux | grep emulator | awk '{print $2}'  | xargs sudo kill -9
                        break
                    fi
                    themis=$(ps aux | grep themis | wc -l)
                    if [ $themis = '1' ];
                    then
                        echo 'Themis finished!'
                        ps aux | grep themis.py | awk '{print $2}'  | xargs sudo kill -9
                        ps aux | grep record.py | awk '{print $2}'  | xargs sudo kill -9
                        ps aux | grep emulator | awk '{print $2}'  | xargs sudo kill -9
                        break                        
                    fi
                }
                done
            break
        fi
        sleep 3
    }
    done
echo "Finish themis"
sleep 20

timeout 65m python themis.py --no-headless --avd themis --apk ../collect/collect-1.23.0-beta.2-#3222.apk --time 1h -o ../humanoid-results-record-89659/ --humanoid --snapshot snap_2022-08-31_22-26-04 &
while true
    do
    {    
        activity_id=$(adb shell "ps | grep org.odk.collect.android")
        if [[ "$activity_id" =~ "collect" ]];
        then
            echo "themis success"
            pid=$(adb shell "ps | grep org.odk.collect.android | tr -s ' '| cut -d ' ' -f 2")
            pid=($pid)
            while true
                do
                {
                    cur_pid=$(adb shell "ps | grep org.odk.collect.android | tr -s ' '| cut -d ' ' -f 2")
                    cur_pid=($cur_pid)
                    if [[ "$pid" != "$cur_pid" ]];
                    then
                        echo 'pid changed!'
                        sleep 5
                        ps aux | grep themis.py | awk '{print $2}'  | xargs sudo kill -9
                        ps aux | grep record.py | awk '{print $2}'  | xargs sudo kill -9
                        ps aux | grep emulator | awk '{print $2}'  | xargs sudo kill -9
                        break
                    fi
                    themis=$(ps aux | grep themis | wc -l)
                    if [ $themis = '1' ];
                    then
                        echo 'Themis finished!'
                        ps aux | grep themis.py | awk '{print $2}'  | xargs sudo kill -9
                        ps aux | grep record.py | awk '{print $2}'  | xargs sudo kill -9
                        ps aux | grep emulator | awk '{print $2}'  | xargs sudo kill -9
                        break                        
                    fi
                }
                done
            break
        fi
        sleep 3
    }
    done
echo "Finish themis"
sleep 20

timeout 65m python themis.py --no-headless --avd themis --apk ../AnkiDroid/AnkiDroid-debug-2.9-#4977.apk --time 1h -o ../humanoid-results-record-89659/ --humanoid --snapshot snap_2022-08-31_22-25-49 &
while true
    do
    {    
        activity_id=$(adb shell "ps | grep com.ichi2.anki")
        if [[ "$activity_id" =~ "anki" ]];
        then
            echo "themis success"
            pid=$(adb shell "ps | grep com.ichi2.anki | tr -s ' '| cut -d ' ' -f 2")
            pid=($pid)
            while true
                do
                {
                    cur_pid=$(adb shell "ps | grep com.ichi2.anki | tr -s ' '| cut -d ' ' -f 2")
                    cur_pid=($cur_pid)
                    if [[ "$pid" != "$cur_pid" ]];
                    then
                        echo 'pid changed!'
                        sleep 5
                        ps aux | grep themis.py | awk '{print $2}'  | xargs sudo kill -9
                        ps aux | grep record.py | awk '{print $2}'  | xargs sudo kill -9
                        ps aux | grep emulator | awk '{print $2}'  | xargs sudo kill -9
                        break
                    fi
                    themis=$(ps aux | grep themis | wc -l)
                    if [ $themis = '1' ];
                    then
                        echo 'Themis finished!'
                        ps aux | grep themis.py | awk '{print $2}'  | xargs sudo kill -9
                        ps aux | grep record.py | awk '{print $2}'  | xargs sudo kill -9
                        ps aux | grep emulator | awk '{print $2}'  | xargs sudo kill -9
                        break                        
                    fi
                }
                done
            break
        fi
        sleep 3
    }
    done
echo "Finish themis"
sleep 20

timeout 65m python themis.py --no-headless --avd themis --apk ../and-bible/and-bible-build-377-#703.apk --time 1h -o ../humanoid-results-record-89659/ --humanoid --snapshot snap_2022-08-31_22-25-36 &
while true
    do
    {    
        activity_id=$(adb shell "ps | grep net.bible.android.activity")
        if [[ "$activity_id" =~ "bible" ]];
        then
            echo "themis success"
            pid=$(adb shell "ps | grep net.bible.android.activity | tr -s ' '| cut -d ' ' -f 2")
            pid=($pid)
            while true
                do
                {
                    cur_pid=$(adb shell "ps | grep net.bible.android.activity | tr -s ' '| cut -d ' ' -f 2")
                    cur_pid=($cur_pid)
                    if [[ "$pid" != "$cur_pid" ]];
                    then
                        echo 'pid changed!'
                        sleep 5
                        ps aux | grep themis.py | awk '{print $2}'  | xargs sudo kill -9
                        ps aux | grep record.py | awk '{print $2}'  | xargs sudo kill -9
                        ps aux | grep emulator | awk '{print $2}'  | xargs sudo kill -9
                        break
                    fi
                    themis=$(ps aux | grep themis | wc -l)
                    if [ $themis = '1' ];
                    then
                        echo 'Themis finished!'
                        ps aux | grep themis.py | awk '{print $2}'  | xargs sudo kill -9
                        ps aux | grep record.py | awk '{print $2}'  | xargs sudo kill -9
                        ps aux | grep emulator | awk '{print $2}'  | xargs sudo kill -9
                        break                        
                    fi
                }
                done
            break
        fi
        sleep 3
    }
    done
echo "Finish themis"
sleep 20

timeout 65m python themis.py --no-headless --avd themis --apk ../FirefoxLite/FirefoxLite-2.1.12-#4881.apk --time 1h -o ../humanoid-results-record-89659/ --humanoid --snapshot snap_2022-08-31_22-27-56 &
while true
    do
    {    
        activity_id=$(adb shell "ps | grep org.mozilla.rocket.debug.ting")
        if [[ "$activity_id" =~ "mozilla" ]];
        then
            echo "themis success"
            pid=$(adb shell "ps | grep org.mozilla.rocket.debug.ting | tr -s ' '| cut -d ' ' -f 2")
            pid=($pid)
            while true
                do
                {
                    cur_pid=$(adb shell "ps | grep org.mozilla.rocket.debug.ting | tr -s ' '| cut -d ' ' -f 2")
                    cur_pid=($cur_pid)
                    if [[ "$pid" != "$cur_pid" ]];
                    then
                        echo 'pid changed!'
                        sleep 5
                        ps aux | grep themis.py | awk '{print $2}'  | xargs sudo kill -9
                        ps aux | grep record.py | awk '{print $2}'  | xargs sudo kill -9
                        ps aux | grep emulator | awk '{print $2}'  | xargs sudo kill -9
                        break
                    fi
                    themis=$(ps aux | grep themis | wc -l)
                    if [ $themis = '1' ];
                    then
                        echo 'Themis finished!'
                        ps aux | grep record.py | awk '{print $2}'  | xargs sudo kill -9
                        ps aux | grep emulator | awk '{print $2}'  | xargs sudo kill -9
                        break                        
                    fi
                }
                done
            break
        fi
        sleep 3
    }
    done
echo "Finish themis"
sleep 20

timeout 65m python themis.py --no-headless --avd themis --apk ../APhotoManager/APhotoManager-0.6.4.180314-debug-#116.apk --time 1h -o ../humanoid-results-rerun-89659/ --humanoid --snapshot snap_2022-08-31_21-57-32
echo "Finish themis"
sleep 20

timeout 65m python themis.py --no-headless --avd themis --apk ../APhotoManager/APhotoManager-0.6.4.180314-debug-#116.apk --time 1h -o ../humanoid-results-rerun-89659/ --humanoid --snapshot snap_2022-08-31_21-57-32
echo "Finish themis"
sleep 20

timeout 65m python themis.py --no-headless --avd themis --apk ../WordPress/WordPress-vanilla-debug--#10302.apk --time 1h -o ../humanoid-results-rerun-89659/ --humanoid --snapshot snap_2022-08-31_22-20-18
echo "Finish themis"
sleep 20

timeout 65m python themis.py --no-headless --avd themis --apk ../WordPress/WordPress-vanilla-debug--#10302.apk --time 1h -o ../humanoid-results-rerun-89659/ --humanoid --snapshot snap_2022-08-31_22-20-18
echo "Finish themis"
sleep 20

timeout 65m python themis.py --no-headless --avd themis --apk ../nextcloud/nextcloud-#1918.apk --time 1h -o ../humanoid-results-rerun-89659/ --humanoid --snapshot snap_2022-08-31_22-26-20
echo "Finish themis"
sleep 20

timeout 65m python themis.py --no-headless --avd themis --apk ../nextcloud/nextcloud-#1918.apk --time 1h -o ../humanoid-results-rerun-89659/ --humanoid --snapshot snap_2022-08-31_22-26-20
echo "Finish themis"
sleep 20

timeout 65m python themis.py --no-headless --avd themis --apk ../collect/collect-1.23.0-beta.2-#3222.apk --time 1h -o ../humanoid-results-rerun-89659/ --humanoid --snapshot snap_2022-08-31_22-26-04
echo "Finish themis"
sleep 20

timeout 65m python themis.py --no-headless --avd themis --apk ../collect/collect-1.23.0-beta.2-#3222.apk --time 1h -o ../humanoid-results-rerun-89659/ --humanoid --snapshot snap_2022-08-31_22-26-04
echo "Finish themis"
sleep 20

timeout 65m python themis.py --no-headless --avd themis --apk ../AnkiDroid/AnkiDroid-debug-2.9-#4977.apk --time 1h -o ../humanoid-results-rerun-89659/ --humanoid --snapshot snap_2022-08-31_22-25-49
echo "Finish themis"
sleep 20

timeout 65m python themis.py --no-headless --avd themis --apk ../AnkiDroid/AnkiDroid-debug-2.9-#4977.apk --time 1h -o ../humanoid-results-rerun-89659/ --humanoid --snapshot snap_2022-08-31_22-25-49
echo "Finish themis"
sleep 20

timeout 65m python themis.py --no-headless --avd themis --apk ../and-bible/and-bible-build-377-#703.apk --time 1h -o ../humanoid-results-rerun-89659/ --humanoid --snapshot snap_2022-08-31_22-25-36
echo "Finish themis"
sleep 20

timeout 65m python themis.py --no-headless --avd themis --apk ../and-bible/and-bible-build-377-#703.apk --time 1h -o ../humanoid-results-rerun-89659/ --humanoid --snapshot snap_2022-08-31_22-25-36
echo "Finish themis"
sleep 20

timeout 65m python themis.py --no-headless --avd themis --apk ../FirefoxLite/FirefoxLite-2.1.12-#4881.apk --time 1h -o ../humanoid-results-rerun-89659/ --humanoid --snapshot snap_2022-08-31_22-27-56
echo "Finish themis"
sleep 20

timeout 65m python themis.py --no-headless --avd themis --apk ../FirefoxLite/FirefoxLite-2.1.12-#4881.apk --time 1h -o ../humanoid-results-rerun-89659/ --humanoid --snapshot snap_2022-08-31_22-27-56
echo "Finish themis"