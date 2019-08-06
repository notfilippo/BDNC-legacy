/// @description OS detection

global.desktop = false
global.web = false

if (os_browser == browser_not_a_browser) {
	switch (os_type) {
		case os_macosx:
		case os_windows:
		case os_linux:
			global.desktop = true
			break
	}
} else {
	global.web = true	
}

#macro WEB global.web
#macro DESKTOP global.desktop

