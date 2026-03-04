#!/bin/bash

RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
BLUE=$(tput setaf 4)
RESET=$(tput sgr0)

#Parameter Check
if [ $# -eq 0 ]; then
	echo "${YELLOW}Usage is: $0 <file_name_or_directory>${RESET}" >&2
	exit 1
fi

TARGET="$1"

#Is there?
if [ ! -e "$TARGET" ]; then
	echo "${RED}Error: '$TARGET' couldn't find${RESET}" >&2
	exit 1
fi

echo "${GREEN}Entry Exists: $TARGET${RESET}"

#File Or Directory
if [ -f "$TARGET" ]; then
	echo "This is a file."
elif [ -d "$TARGET" ]; then
	echo "This is a directory."
else
	echo "This is a special kind of file."
fi

#Permissions
if [ -r "$TARGET" ]; then
	echo "${BLUE}Readable${RESET}"
else
	echo "${YELLOW}Unreadable${RESET}"
fi

if [ -w "$TARGET" ]; then
	echo "${BLUE}Writable${RESET}"
else
	echo "${YELLOW}Unwritable${RESET}"
fi

if [ -x "$TARGET" ]; then
	echo "${BLUE}Executable${RESET}"
else
	echo "${YELLOW}Unexecutable${RESET}"
fi

exit 0
