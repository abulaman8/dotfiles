# #!/bin/bash
#
# choice=$(echo -e 'Yes, shutdown\nNo, cancel' | dmenu -i -p 'Do you really want to shutdown your computer?')
#
# if [ "$choice" == 'Yes, shutdown' ]; then
#     shutdown now
# fi



#!/bin/bash

choice=$(echo 'Shutdown\nRestart\nLogout\nCancel' | dmenu -i -p 'Select an action:')

case "$choice" in
    Shutdown)
        shutdown now
        ;;
    Restart)
        reboot
        ;;
    Logout)
        i3-msg exit
        ;;
    Cancel)
        ;;
esac

