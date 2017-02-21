CMD=$1

case $CMD in
    start)
        /home/robert/k/venv/bin/python /home/robert/k/services/app1/run.py &
        echo $! > /home/robert/k/pidfiles/app1.pid
        ;;
    stop)
        PID=$(cat /home/robert/k/pidfiles/app1.pid)
        kill $PID
        ;;
esac
exit 0
