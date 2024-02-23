M="\e[31m"
G="\e[32m"
Y="\e[33m"
C="\e[36m"
D="\e[0m"
clear
sleep 0.1
echo -e "$G __  __ _____ _  ______ _________"
sleep 0.1
echo "|  \/  |_   _| |/ /  _ \___ / ___|"
sleep 0.1
echo "| |\/| | | | | ' /| |_) ||_ \___ \ "
sleep 0.1
echo '| |  | | | | | . \|  __/___) |__) |'
sleep 0.1
echo '|_|  |_| |_| |_|\_\_|  |____/____/'
sleep 0.5
echo -e "\e[0m  Tweak Performance Mediatek P35
        $M by Zelt Namizake"
echo
echo -e $C"Github :$D https://github.com\ZeltNamizake"
echo -e $M"Youtube :$D https://m.youtube.com\@Zelt71"
echo
echo -e "\e[31mMode Performance :\e[0m"
echo • Overclock CPU
echo • Disable Thermal
echo • FPS Booster "&" Game Tweaks
echo -e • Renderer "$C(SKIAGL)$D"
echo • Smooth UI "&" Touch Responsive
echo • Ram Optimization "&" Game Optimization
echo • Disable "V-Sync" "&" Doze
echo • Enable PPM System Booster
echo • Disable PPM System Limit
echo • Performance Acceleration
echo • Set Power High Performance
echo • Set CPU Scheduling Performance
echo
echo -e "\e[33mMode Powersave :\e[0m"
echo • Underclock CPU
echo • Enable Thermal
echo • Disable PPM System Booster
echo • Enable PPM System Limit
echo • Game Tweak and Optimization Off
echo • System Boost Powersave
echo • Powersave Battery
echo • Set Powersave Performance
echo -e • Set Renderer Default "$G(OpenGL)$D"
echo • Set CPU Scheduling Powersave
sleep 0.3
echo -e "$C\nMode:$D"
echo -e "[$M 1 $D] Mode$M Performance$D "
echo -e "[$Y 2 $D] Mode$Y Powersave$D"
read -p "Select Mode : " mode


case $mode in
  1)
for ((i=0; i<=100; i++)); do
    sleep 0.04
    echo -en -e "\r$D[$G+$D] Loading $M$i%..."
   if [[ $i = 100 ]]; then
    sleep 0.1
      echo -en -e "$G Complete\n"
      echo 3 > /proc/cpufreq/cpufreq_power_mode
echo "performance" > /sys/devices/system/cpu/cpufreq/policy0/scaling_governor
echo "performance" > /sys/devices/system/cpu/cpufreq/policy4/scaling_governor
# Disable Thermal
stop thermal
stop thermald
stop thermal_manager
stop thermalloadalgod
stop vendor.thermal-hal-2-0.mtk
#Renderer SKIAGL
setprop debug.hwui.renderer skiagl
#Fps Booster
setprop persist.sys.NV_FPSLIMIT 120
setprop persist.sys.NV_POWERMODE 1
setprop persist.sys.NV_PROFVER 15
setprop persist.sys.NV_STEREOCTRL 0
setprop persist.sys.NV_STEREOSEPCHG 0
setprop persist.sys.NV_STEREOSEP 20
#Ram Optimization
setprop persist.sys.purgeable_assets 1
setprop dalvik.vm.verify-bytecode false
setprop debug.kill_allocating_task 0
setprop ENFORCE_PROCESS_LIMIT false
#Acceleration
setprop debug.composition.type gpu
setprop debug.performance.tuning 1
setprop hwui.disable_vsync true
setprop debug.sf.hw 1
setprop hw3d.force 1
setprop hw2d.force 1
setprop video.accelerate.hw 1
#Smooth UI
setprop persist.service.lgospd.enable 0
setprop persist.service.pcsync.enable 0
setprop windowsmgr.max_events_per_sec 30
setprop touch.presure.scale 0.0001
setprop debug.egl.swapinterval -60
#PPM
echo 1 > /proc/ppm/enabled
echo 0 0 > /proc/ppm/policy_status
echo 1 0 > /proc/ppm/policy_status
echo 2 0 > /proc/ppm/policy_status
echo 3 0 > /proc/ppm/policy_status
echo 4 0 > /proc/ppm/policy_status
echo 5 0 > /proc/ppm/policy_status
echo 6 0 > /proc/ppm/policy_status
echo 7 0 > /proc/ppm/policy_status
echo 8 0 > /proc/ppm/policy_status
echo 9 1 > /proc/ppm/policy_status
#Oc CPU
echo 1 2300000 > /proc/ppm/policy/hard_userlimit_max_cpu_freq
echo 1 2300000 > /proc/ppm/policy/hard_userlimit_min_cpu_freq
echo 0 2900000 > /proc/ppm/policy/hard_userlimit_max_cpu_freq
echo 0 2900000 > /proc/ppm/policy/hard_userlimit_min_cpu_freq
#CMD Power
cmd power set-mode 0
cmd power set-fixed-performance-mode-enabled true
cmd power set-adaptive-power-saver-enabled false
#Game Optimization & Game Tweaks
setprop persist.vendor.dfps.level 144
setprop persist.vendor.power.dfps.level 120
setprop vendor.display.use_layer_ext 0
setprop vendor.display.enable_optimize_refresh 1
setprop vendor.display.enable_optimize_refresh true
setprop persist.cpu.gov.performance 1
#Doze
setprop doze.display.supported true
setprop doze.pulse.notifications true
setprop doze.use.accelerometer 0
setprop doze.pickup.vibration.threshold 2000
setprop doze.pulse.brightness 5
setprop doze.pulse.delay.in 200
setprop doze.pulse.duration.in 1000
setprop doze.pulse.duration.out 1000
setprop doze.pulse.duration.visible 3000
setprop doze.pulse.proxcheck 0
setprop doze.pulse.schedule.resets 3
setprop doze.pulse.sigmotion 0
setprop doze.shake.acc.threshold 10
setprop doze.vibrate.sigmotion 0
setprop debug.doze.component 0
echo -e $G"If there are no changes, please restart the script"
    fi
done
    ;;
  2)
for ((i=0; i<=100; i++)); do
    sleep 0.04
    echo -en -e "\r$D[$G+$D] Loading $M$i%..."
   if [[ $i = 100 ]]; then
    sleep 0.1
      echo -en -e "$G Complete\n"
      echo -e $G"If there are no changes, please restart the script"
      echo 2 > /proc/cpufreq/cpufreq_power_mode
echo "powersave" > /sys/devices/system/cpu/cpufreq/policy0/scaling_governor
echo "powersave" > /sys/devices/system/cpu/cpufreq/policy4/scaling_governor
#Enable Thermal
start thermal
start thermald
start thermal_manager
start thermalloadalgod
start vendor.thermal-hal-2-0.mtk
#PPM
echo 1 > /proc/ppm/enabled
echo 0 1 > /proc/ppm/policy_status
echo 1 1 > /proc/ppm/policy_status
echo 2 1 > /proc/ppm/policy_status
echo 3 1 > /proc/ppm/policy_status
echo 4 1 > /proc/ppm/policy_status
echo 5 1 > /proc/ppm/policy_status
echo 6 1 > /proc/ppm/policy_status
echo 7 1 > /proc/ppm/policy_status
echo 8 1 > /proc/ppm/policy_status
echo 9 0 > /proc/ppm/policy_status
#UC CPU
echo 1 1300000 > /proc/ppm/policy/hard_userlimit_max_cpu_freq
echo 1 1300000 > /proc/ppm/policy/hard_userlimit_min_cpu_freq
echo 0 9000 > /proc/ppm/policy/hard_userlimit_max_cpu_freq
echo 0 9000 > /proc/ppm/policy/hard_userlimit_min_cpu_freq
#Powersave
cmd power set-mode 1
cmd power set-fixed-performance-mode-enabled false
cmd power set-adaptive-power-saver-enabled true
#Set renderer
setprop debug.hwui.renderer opengl
#Game Tweaks and Game Optimization
setprop persist.cpu.gov.performance 0
setprop persist.vendor.dfps.level 30
setprop persist.vendor.power.dfps.level 30
setprop vendor.display.use_layer_ext 0
setprop vendor.display.enable_optimize_refresh 0
setprop vendor.display.enable_optimize_refresh false
    fi
done
  ;;
  *)
  echo -e $M"Nothing Mode $mode"$D
  ;;
esac
