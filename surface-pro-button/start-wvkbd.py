#!/bin/python3
import os
import subprocess
import evdev

winbutton = evdev.InputDevice('/dev/input/event2')
#print(winbutton)
iskeyboardenabled = False

for event in winbutton.read_loop():
    if event.type == evdev.ecodes.EV_KEY:
        keypresses = str(evdev.categorize(event))
        #print(keypresses)
        
        # take the last key event with the value "up"
        keypresses_in_array = keypresses.split(", ")
        #print(keypresses_in_array)
        if keypresses_in_array[2] == "up":

            if not iskeyboardenabled:
                os.system('wvkbd-mobintl -L 250 &> /dev/null 2>&1')
                iskeyboardenabled = True
                #print(iskeyboardenabled)
            else:
                try:
                    kbd_pid = subprocess.check_output(['pidof', 'wvkbd-mobintl']).decode().strip()
                    #print(kbd_pid)
                    subprocess.run(['kill', '-9', kbd_pid])
                    iskeyboardenabled = False
                    #print(iskeyboardenabled)
                except subprocess.CalledProcessError:
                    print("Keyboard process not found.")
        else:
            continue
