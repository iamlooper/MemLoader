#!/sbin/sh

###########################
# MMT Reborn Logic
###########################

############
# Config Vars
############

# Uncomment if you want to skip mount for your module
#SKIPMOUNT=true
# Uncomment if you want to clean old files in module before injecting new module
#CLEANSERVICE=true
# Uncomment if you want to load vskel after module info print. If you want to manually load it, consider using load_vksel function
#AUTOVKSEL=true
# Uncomment DEBUG if you want store debug logs of installation
DEBUG=true


############
# Replace List
############

# List all directories you want to directly replace in the system
# Construct your list in the following example format
REPLACE_EXAMPLE="
/system/app/Youtube
/system/priv-app/SystemUI
/system/priv-app/Settings
/system/framework
"
# Construct your own list here
REPLACE="
"

############
# Cleanup
############

# Remove unnecessary stuff
do_cleanup() {
  rmtouch "$MODPATH/system/placeholder"
  rmtouch "$MODPATH/system/bin/xload32"
  rmtouch "$MODPATH/system/bin/xload64"
  rmtouch "$MODPATH/bin/vmtouch32"
  rmtouch "$MODPATH/bin/vmtouch64"  
}

############
# Permissions
############

# Set permissions
set_permissions() {
  set_perm_recursive "$MODPATH" 0 0 0777 0755
  set_perm_recursive "$MODPATH/system/bin" 0 0 0777 0755  
  set_perm_recursive "$MODPATH/bin" 0 0 0777 0755    
}

############
# Info Print
############

# Set what you want to be displayed on header of installation process
info_print() {
  ui_print "$(awk '{print}' "$MODPATH/xload_banner")"
  ui_print ""

  sleep 0.5

  ui_print "[*] Load any android file directly into physical RAM to achieve better read ahead speed and I/O scheduling for that file"
  ui_print ""

  sleep 0.5  
}

############
# Main
############

# Change the logic to whatever you want
int_main() {
  ui_print "[*] Installing XLoad™ into system..."
  ui_print ""

  [[ "$IS64BIT" == "true" ]] && {
    mv -f "$MODPATH/system/bin/xload64" "$MODPATH/system/bin/xload" 
    mv -f "$MODPATH/bin/vmtouch64" "$MODPATH/bin/vmtouch"  
  } || {
    mv -f "$MODPATH/system/bin/xload32" "$MODPATH/system/bin/xload"
    mv -f "$MODPATH/bin/vmtouch32" "$MODPATH/bin/vmtouch"
  }

  sleep 0.5

  ui_print "[*] Setting up executable permissions..."
  ui_print ""

  sleep 0.5

  ui_print "[*] Cleaning up temporary files..."
  ui_print ""

  sleep 0.5

  ui_print "[*] Done!"
  ui_print ""

  sleep 1.5
  
  ui_print " --- Notes --- "
  ui_print ""
  ui_print "[*] Reboot is required"
  ui_print ""
  ui_print "[*] (su -c xload) to open XLoad™ Menu in Terminal"
  ui_print ""
  ui_print "[*] Report issues to @loopchats on Telegram"
  ui_print ""
  ui_print "[*] Join @loopprojects on Telegram to get XLoad™ updates"
  ui_print ""
  ui_print "[*] You can find me at iamlooper @ Telegram for direct support"

  sleep 2.5  
}