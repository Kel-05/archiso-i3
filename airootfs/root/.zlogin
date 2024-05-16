# fix for screen readers
if grep -Fqa 'accessibility=' /proc/cmdline &> /dev/null; then
    setopt SINGLE_LINE_ZLE
fi

~/.automated_script.sh

if [ "$(tty | cut -d/ -f3)" = "tty1" ] && ! pidof Xorg > /dev/null; then
    startx
fi
