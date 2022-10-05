cd /home/zoooe/workspaces/github/sara

while true
    do
    {    
        activity=$(adb shell "ps | grep de.k3b.android.androFotoFinder")
        if [[ "$activity" =~ "k3b" ]];
        then
            echo "themis success"
            pid=$(adb shell "ps | grep de.k3b.android.androFotoFinder | tr -s ' '| cut -d ' ' -f 2")
            pid=($pid)
            python3 ./record.py --trace ./trace.log --packages de.k3b.android.androFotoFinder --pids $pid
            break   
        fi
        sleep 3
    }
    done
mkdir APhotoManager-116
mv trace.log APhotoManager-116/trace.log
echo "finished"

wait


while true
    do
    {    
        activity=$(adb shell "ps | grep org.wordpress.android")
        if [[ "$activity" =~ "wordpress" ]];
        then
            echo "themis success"
            pid=$(adb shell "ps | grep org.wordpress.android | tr -s ' '| cut -d ' ' -f 2")
            pid=($pid)
            python3 ./record.py --trace ./trace.log --packages org.wordpress.android --pids $pid
            break   
        fi
        sleep 3
    }
    done
mkdir WordPress-10302
mv trace.log WordPress-10302/trace.log
echo "finished"

wait


while true
    do
    {    
        activity=$(adb shell "ps | grep com.nextcloud.client")
        if [[ "$activity" =~ "nextcloud" ]];
        then
            echo "themis success"
            pid=$(adb shell "ps | grep com.nextcloud.client | tr -s ' '| cut -d ' ' -f 2")
            pid=($pid)
            python3 ./record.py --trace ./trace.log --packages com.nextcloud.client --pids $pid
            break   
        fi
        sleep 3
    }
    done
mkdir nextcloud-1918
mv trace.log nextcloud-1918/trace.log
echo "finished"

wait


while true
    do
    {    
        activity=$(adb shell "ps | grep org.odk.collect.android")
        if [[ "$activity" =~ "collect" ]];
        then
            echo "themis success"
            pid=$(adb shell "ps | grep org.odk.collect.android | tr -s ' '| cut -d ' ' -f 2")
            pid=($pid)
            python3 ./record.py --trace ./trace.log --packages org.odk.collect.android --pids $pid
            break   
        fi
        sleep 3
    }
    done
mkdir collect-3222
mv trace.log collect-3222/trace.log
echo "finished"

wait


while true
    do
    {    
        activity=$(adb shell "ps | grep com.ichi2.anki")
        if [[ "$activity" =~ "anki" ]];
        then
            echo "themis success"
            pid=$(adb shell "ps | grep com.ichi2.anki | tr -s ' '| cut -d ' ' -f 2")
            pid=($pid)
            python3 ./record.py --trace ./trace.log --packages com.ichi2.anki --pids $pid
            break   
        fi
        sleep 3
    }
    done
mkdir AnkiDroid-4977
mv trace.log AnkiDroid-4977/trace.log
echo "finished"

wait


while true
    do
    {    
        activity=$(adb shell "ps | grep net.bible.android.activity")
        if [[ "$activity" =~ "bible" ]];
        then
            echo "themis success"
            pid=$(adb shell "ps | grep net.bible.android.activity | tr -s ' '| cut -d ' ' -f 2")
            pid=($pid)
            python3 ./record.py --trace ./trace.log --packages net.bible.android.activity --pids $pid
            break   
        fi
        sleep 3
    }
    done
mkdir and-bible-703
mv trace.log and-bible-703/trace.log
echo "finished"


wait


while true
    do
    {    
        activity=$(adb shell "ps | grep org.mozilla.rocket.debug.ting")
        if [[ "$activity" =~ "mozilla" ]];
        then
            echo "themis success"
            pid=$(adb shell "ps | grep org.mozilla.rocket.debug.ting | tr -s ' '| cut -d ' ' -f 2")
            pid=($pid)
            python3 ./record.py --trace ./trace.log --packages org.mozilla.rocket.debug.ting --pids $pid
            break   
        fi
        sleep 3
    }
    done
mkdir FirefoxLite-4881
mv trace.log FirefoxLite-4881/trace.log
echo "finished"