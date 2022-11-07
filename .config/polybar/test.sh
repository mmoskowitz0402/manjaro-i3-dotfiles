killall -q polybar

outputs=$(xrandr --query | awk '/ connected/{ print $1 }')

for m in $outputs; do
	polybar --reload $m & disown
done
