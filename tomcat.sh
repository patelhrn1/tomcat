# Creating require directories.

if [ -d  $CUSTOM_SW_DIR] 
then
	echo "Directory is Present"
else
    mkdir -p $CUSTOM_SW_DIR

#Installing Tomcat.
	
if [ -f $WORKSPACE/apache-tomcat-7.0.77] 

then 
    echo "file is avaialble"
	
elif wget http://archive.apache.org/dist/tomcat/tomcat-7/v7.0.77/bin/apache-tomcat-7.0.77.tar.gz

then
	echo "Unpacking Tomcat installer tarball.......";
	sleep 2s;
	sudo tar -xzvf $WORKSPCE/apache-tomcat-7.0.77.tar.gz;
	echo "Tomcat tarball unpacked.";
	echo ""
	echo "making tomcat installation directory"
	mkdir -p $CUSTOM_SW_DIR/cycle/base
	echo "Installing Tomcat to $CUSTOM_SW_DIR"
	sudo cp -rp $WORKSPACE/apache-tomcat-7.0.77 $CUSTOM_SW_DIR/cycle/base
	export CATALINA_HOME=$CUSTOM_SW_DIR/cycle/base/apache-tomcat-7.0.77
	echo ""
	echo $JAVA_HOME
	echo ""
	echo $PATH
	echo ""
	echo $CATALINA_HOME
	echo ""
	echo "Starting Tomcat server"
	echo ""
	cd $CATALINA_HOME/bin
	sudo ./startup.sh
	echo ""
else
echo "TOMCAT is not installed."
fi
