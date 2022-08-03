echo - | awk "{printf \"%.1f\",
$((
	$(cat /sys/class/power_supply/BAT0/capacity) *
	$(cat /sys/class/power_supply/BAT0/voltage_now)
)) / 100000000000 }" ; echo " W"
