
cd /home/zoooe/workspaces/github/sara
emulator -avd themis -verbose -snapshot snap_2022-04-26_20-05-23 &
sleep 15
while true
    do
    {    
        pid=$(adb shell "ps | grep de.k3b.android.androFotoFinder")
        if [[ "$pid" =~ "k3b" ]];
        then
            echo "emulator success"
            cp ./APhotoManager-116/trace.log trace.log
            python3 ./parse_events.py --trace ./trace.log
            echo "finish parse"
            sleep 5
            python3 ./trace_replay.py --path ./self_replay --trace ./self_replay_trace.log --pids 5377
            echo "finish replay"
            sleep 5
            ps aux | grep python | awk '{print $2}'  | xargs sudo kill -9
            sleep 5
            ps aux | grep emulator | awk '{print $2}'  | xargs sudo kill -9
            sleep 5
            break
        fi
        sleep 10
    }
    done

wait

emulator -avd themis -verbose -snapshot snap_2022-04-26_21-43-08 &
# sleep 15
# while true
#     do
#     {    
#         pid=$(adb shell "ps | grep org.wordpress.android")
#         if [[ "$pid" =~ "wordpress" ]];
#         then
#             echo "emulator success"
#             cp ./WordPress-10302/trace.log trace.log
#             python3 ./parse_events.py --trace ./trace.log
#             echo "finish parse"
#             sleep 5
#             python3 ./trace_replay.py --path ./self_replay --trace ./self_replay_trace.log --pids 5824
#             echo "finish replay"
#             sleep 5
#             ps aux | grep python | awk '{print $2}'  | xargs sudo kill -9
#             sleep 5
#             ps aux | grep emulator | awk '{print $2}'  | xargs sudo kill -9
#             sleep 5
#             break
#         fi
#         sleep 10
#     }
#     done

# wait

emulator -avd themis -verbose -snapshot snap_2022-04-26_20-15-20 &
sleep 15
while true
    do
    {    
        pid=$(adb shell "ps | grep com.nextcloud.client")
        if [[ "$pid" =~ "nextcloud" ]];
        then
            echo "emulator success"
            cp ./nextcloud-1918/trace.log trace.log
            python3 ./parse_events.py --trace ./trace.log
            echo "finish parse"
            sleep 5
            python3 ./trace_replay.py --path ./self_replay --trace ./self_replay_trace.log --pids 6455
            echo "finish replay"
            sleep 5
            ps aux | grep python | awk '{print $2}'  | xargs sudo kill -9
            sleep 5
            ps aux | grep emulator | awk '{print $2}'  | xargs sudo kill -9
            sleep 5
            break
        fi
        sleep 10
    }
    done


wait

emulator -avd themis -verbose -snapshot snap_2022-04-26_20-17-53 &
sleep 15
while true
    do
    {    
        pid=$(adb shell "ps | grep org.mozilla.rocket.debug.ting")
        if [[ "$pid" =~ "mozilla" ]];
        then
            echo "emulator success"
            cp ./FirefoxLite-4881/trace.log trace.log
            python3 ./parse_events.py --trace ./trace.log
            echo "finish parse"
            sleep 5
            python3 ./trace_replay.py --path ./self_replay --trace ./self_replay_trace.log --pids 7423
            echo "finish replay"
            sleep 5
            ps aux | grep python | awk '{print $2}'  | xargs sudo kill -9
            sleep 5
            ps aux | grep emulator | awk '{print $2}'  | xargs sudo kill -9
            sleep 5
            break
        fi
        sleep 10
    }
    done


wait


# emulator -avd themis -verbose -snapshot snap_2022-04-26_20-20-24 &
# sleep 15
# while true
#     do
#     {    
#         pid=$(adb shell "ps | grep org.odk.collect.android")
#         if [[ "$pid" =~ "collect" ]];
#         then
#             echo "emulator success"
#             cp ./collect-3222/trace.log trace.log
#             python3 ./parse_events.py --trace ./trace.log
#             echo "finish parse"
#             sleep 5
#             python3 ./trace_replay.py --path ./self_replay --trace ./self_replay_trace.log --pids 7751
#             echo "finish replay"
#             sleep 5
#             ps aux | grep python | awk '{print $2}'  | xargs sudo kill -9
#             sleep 5
#             ps aux | grep emulator | awk '{print $2}'  | xargs sudo kill -9
#             sleep 5
#             break
#         fi
#         sleep 10
#     }
#     done


# wait

# emulator -avd themis -verbose -snapshot snap_2022-04-26_20-47-21 &
# sleep 15
# while true
#     do
#     {    
#         pid=$(adb shell "ps | grep com.ichi2.anki")
#         if [[ "$pid" =~ "anki" ]];
#         then
#             echo "emulator success"
#             cp ./AnkiDroid-4977/trace.log trace.log
#             python3 ./parse_events.py --trace ./trace.log
#             echo "finish parse"
#             sleep 5
#             python3 ./trace_replay.py --path ./self_replay --trace ./self_replay_trace.log --pids 7928
#             echo "finish replay"
#             sleep 5
#             ps aux | grep python | awk '{print $2}'  | xargs sudo kill -9
#             sleep 5
#             ps aux | grep emulator | awk '{print $2}'  | xargs sudo kill -9
#             sleep 5
#             break
#         fi
#         sleep 10
#     }
#     done

# wait

emulator -avd themis -verbose -snapshot snap_2022-04-28_19-52-35 &
sleep 15
while true
    do
    {    
        pid=$(adb shell "ps | grep net.bible.android.activity")
        if [[ "$pid" =~ "bible" ]];
        then
            echo "emulator success"
            cp ./and-bible-703/trace.log trace.log
            python3 ./parse_events.py --trace ./trace.log
            echo "finish parse"
            sleep 5
            python3 ./trace_replay.py --path ./self_replay --trace ./self_replay_trace.log --pids 8188
            echo "finish replay"
            sleep 5
            ps aux | grep python | awk '{print $2}'  | xargs sudo kill -9
            sleep 5
            ps aux | grep emulator | awk '{print $2}'  | xargs sudo kill -9
            sleep 5
            break
        fi
        sleep 10
    }
    done