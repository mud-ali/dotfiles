function pvc {
	#	protonvpn-cli c --cc US
	wg-quick up 104067US
}

function pvd {
	#	protonvpn-cli d
	wg-quick down 104067US
}
