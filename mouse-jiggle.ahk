F8::SetTimer, Jiggler, % (toggle := !toggle) ? "30" : "Off"

Jiggler:
	Random x, 0, 2
	Random y, 0, 2
	MouseMove x, y, 0, R
	MouseMove x*-1, y*-1, 0, R
Return