CMD=$1

case $CMD in
    start)
        /home/robert/k/venv/bin/python services/app1/run.py
        ;;
    stop)
        echo Stopping
        ;;
esac
exit 0
