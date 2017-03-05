Full Stack Quants Monit demo
====

The demo showed how we can use Monit to keep a web application running:
restarting it if necessary, as well as showing you some basic stats on
resources used.

In this session we built a couple of simple 'Hello World!' applications and
put them under the control of Monit. We showed how Monit restarts them
if they are `kill`ed.

Finally we set up a simple load balancer with Nginx.

All together this gives us a system which provides a good user experience: if
one of the instances goes down then Nginx will forward to the other whilst
Monit does a restart and eventually when both are back up we see Nginx using
both instances again.

How to
----
The `install.sh` script copies the Monit and Nginx configuration files into
their appropriate locations. You then need to get each to reload the config.

The applications run from this repo directory, via a virtual environment.

Therefore, the routine is:

    virtualenv venv
    source venv/bin/activate
    pip install flask
    source install.sh
    sudo monit reload
    sudo service nginx restart
