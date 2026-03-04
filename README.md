FileCheck - Bash File & Directory Inspector

Overview

Filecheck is a lightweight Bash utility that validates and inspects files or directories from the
command line.
It verifies existence, type and permission flags (read, write, execute).

Designed for system administrators, Linux learners and automation workflows.

Features

- Parameter Validation
- Existence Check
- File vs Directory Detection
- Permission Inspection (r/w/x)
- Proper exit codes
- Error output via stderr

Installation

- git clone https://github.com/doomdaydragon/filecheck.git
- cd filecheck
- chmod +x filecheck.sh

Usage:
- 	./filecheck.sh <file_or_directory>

Example:
- 	./fiecheck.sh /etc/passwd
- 	./filecheck.sh /bin/bash
- 	./filecheck.sh non_existing_file


Author:
~Doom Day Dragon~
