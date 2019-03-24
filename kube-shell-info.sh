#/bin/ash
echo "Hello There!";
sleep 2
echo "";
echo "Welcome to kube-shell container, you did the hello world, so I'm getting some info for you:";
sleep 3;
echo "The python verison in this container is:";
python -V;
sleep 2;
echo "";
echo "The pip verison in this container is:";
pip --version;
echo "";
sleep 2;
echo "The current kubectl client version is:";
kubectl version | sed "s/The connection to the server localhost:8080 was refused - did you specify the right host or port?//g" | sed "s/The connection to the server localhost:8080 was refused - did you specify the right host or port?//g"
sleep 2;
echo "";
echo "To start up kube-shell, run \"kube-shell\"";
