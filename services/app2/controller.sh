#!/bin/bash

CMD=$1

case $CMD in
    start)
        /home/robert/k/venv/bin/python /home/robert/k/services/app2/run.py &
        echo $! > /home/robert/k/pidfiles/app2.pid
        ;;
    stop)
        PID=$(cat /home/robert/k/pidfiles/app2.pid)
        kill $PID
        ;;
esac
exit 0
