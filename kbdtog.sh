function kbdoff {
	export KBDMASTER=$(xinput list | grep 'AT Translated' | sed "s/.*keyboard\\s\(\)//" | awk -F '[()]' '{print $2}')
	export KBDSLAVE=$(xinput list | grep 'AT Translated' | sed "s/.*id=//" | sed "s/\\s.*//")
	xinput float $KBDSLAVE
}

function kbdon {
	xinput reattach $KBDSLAVE $KBDMASTER
}
