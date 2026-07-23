#!/usr/bin/env bash
set -euo pipefail

if [[ "${ALLOW_REBOOT:-}" != "YES" ]]; then
  echo "Refusing to reboot. Set ALLOW_REBOOT=YES to confirm." >&2
  exit 2
fi

exec /usr/sbin/reboot
