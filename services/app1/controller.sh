CMD=$1

case $CMD in
    start)
        /home/robert/k/venv/bin/python /home/robert/k/services/app1/run.py &
        echo $! > /home/robert/k/pidfiles/app1.pid
        ;;
    stop)
        echo Stopping
        ;;
esac
exit 0
