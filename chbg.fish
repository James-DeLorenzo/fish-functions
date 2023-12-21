function chbg
xrandr | grep ' connected' | wc -l | awk '{ for (counter =0; counter < $1; counter++) system("nitrogen --random --set-zoom-fill --head=" counter) }'
end
