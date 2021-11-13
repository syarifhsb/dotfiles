export PATH=/home/syarif/.local/bin/:$PATH
export LD_LIBRARY_PATH=/home/syarif/.local/lib:$LD_LIBRARY_PATH

# Start X if not started on tty 1 yet
if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -lt 3 ]]; then
	exec startx 
fi
