#!/bin/bash

if [[ -n "$DB_DEBUG" ]]; then
  set -x
fi

y=${NOW:0:4}
m=${NOW:5:2}
d=${NOW:8:2}

echo "Creating SMB directory: /${y}/${m}/${d}"

smbclient //<hostip>/NAS -U user%pass -c "cd /Backups/SQL-WRO/ ; mkdir "${y}" ; mkdir "${y}"/"${m}" ; mkdir "${y}"/"${m}"/"${d}