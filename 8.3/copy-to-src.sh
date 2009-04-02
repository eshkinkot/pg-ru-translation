#!/bin/bash

if [ -r ../cfg ]; then
	. ../cfg
	echo copy to source: $DEST
else
	echo need ../cfg file with DEST variable
	exit 1
fi

cp -v dev/initdb-ru.po $DEST/bin/initdb/po/ru.po
cp -v dev/pg_resetxlog-ru.po $DEST/bin/pg_resetxlog/po/ru.po
cp -v dev/pg_config-ru.po $DEST/bin/pg_config/po/ru.po
cp -v dev/pg_ctl-ru.po $DEST/bin/pg_ctl/po/ru.po
