#!/usr/bin/env bash

# anzu-installer: Script to customise a fresh Arch Linux installation.
# Copyright (C) 2025  Cristian Guilarte
# 
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as
# published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
# 
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

# ANSI 16 Colors 
## Foreground
FgBlack='\x1b[30m'
FgRed='\x1b[31m'
FgGreen='\x1b[32m'
FgYellow='\x1b[33m'
FgBlue='\x1b[34m'
FgMagenta='\x1b[35m'
FgCyan='\x1b[36m'
FgWhite='\x1b[37m'

FgBrightBlack='\x1b[90m'
FgBrightRed='\x1b[91m' 	
FgBrightGreen='\x1b[92m' 	
FgBrightYellow='\x1b[93m' 	
FgBrightBlue='\x1b[94m' 	
FgBrightMagenta='\x1b[95m' 	
FgBrightCyan='\x1b[96m' 	
FgBrightWhite='\x1b[97m' 	

FgDefault='\x1b[39m'

## Background
BgBlack='\x1b[40m'
BgRed='\x1b[41m'
BgGreen='\x1b[42m'
BgYellow='\x1b[43m'
BgBlue='\x1b[44m'
BgMagenta='\x1b[45m'
BgCyan='\x1b[46m'
BgWhite='\x1b[47m'

BgBrightBlack='\x1b[100m'
BgBrightRed='\x1b[101m'
BgBrightGreen='\x1b[102m'
BgBrightYellow='\x1b[103m'
BgBrightBlue='\x1b[104m'
BgBrightMagenta='\x1b[105m'
BgBrightCyan='\x1b[106m'
BgBrightWhite='\x1b[107m'

BgDefault='\x1b[49m'

Reset='\x1b[0m'
Bold='\x1b[1m'
Dim='\x1b[2m'
Italic='\x1b[3m'
Underline='\x1b[4m'
Blinking='\x1b[5m'
Inverse='\x1b[7m'
Hidden='\x1b[8m'
Strikethrough='\x1b[9m'
