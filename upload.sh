#!/bin/sh
LINKIT="mylinkit.local"
APP=`basename \`pwd\``
if [ -f $APP ]; then
	echo "Uploading $APP to $LINKIT"
	scp $APP root@$LINKIT:$APP
	echo "Done."
fi
