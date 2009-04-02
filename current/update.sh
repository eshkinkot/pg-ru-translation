#!/bin/bash

if ! pushd org; then
  echo can not change dir to org
  exit
fi

CMD="wget -N"
URL="http://babel.postgresql.org/po-current/"
#F="ecpg ecpglib initdb libpq pg_config pg_controldata pg_ctl pg_dump pg_resetxlog pgscripts "\
F="ecpg initdb libpq pg_config pg_controldata pg_ctl pg_dump pg_resetxlog pgscripts "\
"plperl plpgsql plpython pltcl postgres psql"

for a in $F; do
#    echo $CMD $URL$a.pot
    $CMD $URL$a-ru.po
done;

md5sum -c ../org.md5

popd

for a in $F; do
    msgmerge --update --backup=numbered dev/$a-ru.po org/$a-ru.po
done;
