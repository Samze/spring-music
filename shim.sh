#!/usr/bin/env sh

if [ ! -z "$BINDING_SECRET" ]; then
            export VCAP_SERVICES="{ \"azure-postgresql-9-6\": [ { \"binding_name\": null, \"credentials\": $BINDING_SECRET,
            \"instance_name\":
            \"azure-psql2\", \"label\": \"azure-postgresql-9-6\", \"name\": \"azure-psql2\",
            \"plan\": \"basic\", \"provider\": null, \"syslog_drain_url\": null, \"tags\": [
            \"Azure\", \"PostgreSQL\", \"DBMS\", \"Server\", \"Database\" ], \"volume_mounts\":
            [] } ] }"
fi

echo $VCAP_SERVICES

java -Djava.security.egd=file:/dev/./urandom -jar /spring-music.jar
