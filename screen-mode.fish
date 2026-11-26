function screen-mode --argument mode
 # Ensure that the mode argument is provided
    if test -z $mode
        echo "Error: 'mode' argument is required."
        return 1
else
switch $mode
case 'game'
kscreen-doctor output.HDMI-A-1.disable output.DP-3.disable > /dev/null
case 'on'
kscreen-doctor output.HDMI-A-1.enable output.HDMI-A-1.position.0,600 output.DP-3.enable output.DP-3.position.4480,0 output.HDMI-A-1.brightness.20 output.DP-3.brightness.20 output.DP-2.position.1920,240 > /dev/null
case '*'
echo "Unknown mode: $mode. Available modes: game, on."
return 1
end
end
end
