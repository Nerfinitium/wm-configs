#!/usr/bin/env sh

# Terminate already running polybar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

# Launch main polybar
export MONITOR=$(polybar -m | tail -1 | sed -e 's/:.*$//g')
polybar main &

echo "Polybars launched..."
