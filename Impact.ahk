#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force ; Replace old instance upon creation of new instance.

class Impact {
	commands := ["help", "bind", "chat", "friend", "rotate", "leave", "locate", "peek", "gui", "prefix", "ghosthand", "plugins", "server", "toggle", "set", "clip", "xray", "nuker", "perspective", "elytraplus", "drop", "spam", "autoeject", "reconnect", "rename", "falldamage", "search", "goto", "b", "preset", "breadcrumbs"]
	;; execute impact command
	x(command, args*){
		args := argsToString(args)
		If (InArray(Impact.commands, command) ){
			Send, t
			sleep 500
			Send, {.}%command% %args%{Enter}
		}
	}
	class Baritone {
		commands := ["help","set","modified","reset","goal","goto","path","proc","All","version","repack","build","schematica","come","axis","forcecancel","gc","All","invert","tunnel","render","farm","chests","follow","explorefilter","reloadall","All","saveall","explore","blacklist","find","mine","click","thisway","waypoints","All","sethome","home","sel","pause","resume","paused","cancel"]
		}
		;; execute baritone command
		x(command, args*){
			args := argsToString(args)
			If (InArray(Impact.Baritone.commands, command)){
				Impact.x("b "+command, [args])
			}
		}
	}
	argsToString(args*){
		if()
		Join(args, " ")
	}
}

InArray(haystack, needle) {
	for i, value in haystack
		if (value = needle)
			return true
	return false
}