# show currently playing song, for slstatus
if mpc status &> /dev/null; then
    echo "$(mpc status | head -n1 | cut -c -40 | sed 's/$/ .../' || echo "- / -")"
else
    echo "- / -"
fi

