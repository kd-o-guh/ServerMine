#!/bin/sh

# Dirty fake "pause" method to hold the command window open.
pause() {
	read -s -n 1 -p "Press any key to continue . . ."
	echo ""
}

# Read the settings.
. ./settings.sh

# Set the Java to use. User's are able to set a direct path to use in the settings file. (Advanced Option)
JAVA_INSTALL="java"
if [ -n "$JAVA_JAR" ]; then
	echo "[Pre Start] Custom Java install path is set. Switching to that...."
	JAVA_INSTALL="$(dirname "$JAVA_JAR")/$(basename "$JAVA_JAR")"
	echo $JAVA_INSTALL
fi


# Validate the Java install.
if type -p "$JAVA_INSTALL" &> /dev/null; then
    echo "[Pre Start] Java install found."
else
    echo "[Pre Start] ERROR: Java is missing!"
	pause
	exit 1
fi

# Get the version
JAVA_VER=$("$JAVA_INSTALL" -version 2>&1 | sed -n ';s/.* version "\(.*\)\.\(.*\)\..*".*/\1\2/p;')
echo "Java Installed: $JAVA_VER"

# Build the Java Params
JAVA_PARAMS="$JAVA_PARAMETERS"

if [ "$JAVA_VER" -ge 160 ]; then
	echo "[Pre Start] Java 16 is not supported. Please downgrade or use 14."
	pause
	exit 1
fi

if [ "$JAVA_VER" -ge 140 ]; then
	echo "[Pre Start] Java is equal or higher to version 14. Custom Java args are not needed. Removing them before server start."
	JAVA_PARAMS=""
fi

# Start the server.
start_server() {
    "$JAVA_INSTALL" -server -Xms${MIN_RAM} -Xmx${MAX_RAM} ${JAVA_PARAMS} -jar ${SERVER_JAR} nogui
}

echo "[Post Start] Starting SkyFactory One Server..."
start_server
