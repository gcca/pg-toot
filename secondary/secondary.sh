#!/usr/bin/env bash
if [ ! -s "$PGDATA/PG_VERSION" ]; then
 sleep 1
 pg_basebackup -h primary -U ruser --checkpoint=fast -D $PGDATA -R --slot=slotv1 -C --port=5432
 chmod 00700 "$PGDATA" || :
 chmod 03775 /var/run/postgresql || :
 find "$PGDATA" \! -user postgres -exec chown postgres '{}' +
 find /var/run/postgresql \! -user postgres -exec chown postgres '{}' +
fi
su-exec postgres "$@"
