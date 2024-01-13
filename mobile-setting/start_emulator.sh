# port=5554
# device=1
# xvfb-run nohup sudo ./emulator/emulator @device_$device -no-window -no-snapshot -memory 4096 -verbose -no-audio -camera-back none -camera-front none -no-boot-anim -screen no-touch -wipe-data -no-snapshot-load -no-snapshot-save -cores 2 -no-passive-gps -port $port &

sudo python3 cmd-emulators.py -method start -num_devices 1