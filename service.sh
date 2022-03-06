#!/system/bin/sh
# XLoad™ | Service Script

wait_until_boot_complete() {
  while [[ "$(getprop sys.boot_completed)" != "1" ]]; do
    sleep 2
  done
}

wait_until_boot_complete

# Initialize XLoad™
xload --init