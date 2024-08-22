function kbdoff {
	export KBDMASTER=$(xinput list | grep 'AT Translated' | sed "s/.*keyboard\\s\(\)//" | awk -F '[()]' '{print $2}')
	export KBDSLAVE=$(xinput list | grep 'AT Translated' | sed "s/.*id=//" | sed "s/\\s.*//")
	xinput float $KBDSLAVE
	echo "$KBDMASTER" >/tmp/kbdmaster
	echo "$KBDSLAVE" >/tmp/kbdslave
}

function kbdon {
	export KBDMASTER=$(cat /tmp/kbdmaster)
	export KBDSLAVE=$(cat /tmp/kbdslave)
	xinput reattach $KBDSLAVE $KBDMASTER
}
