# [<img src="https://cdn.jsdelivr.net/gh/dgalbraith/chocolatey-packages@024a0e31a291ceea63f7af5e63e2679403c5aa8f/icons/sysinternals.png" width="48" height="48" />AccessChk - Windows Sysinternals](https://chocolatey.org/packages/accesschk)

[![Software License](https://img.shields.io/badge/License-Proprietary-grey.svg)](https://docs.microsoft.com/en-us/sysinternals/license-terms)
[![Maintenance status](https://img.shields.io/badge/maintained%3F-yes-green.svg)](https://gitHub.com/dgalbraith/chocolatey-packages/graphs/commit-activity)
[![AppVeyor build](https://img.shields.io/appveyor/ci/dgalbraith/chocolatey-packages)](https://ci.appveyor.com/project/dgalbraith/chocolatey-packages)
[![Software version](https://img.shields.io/badge/Source-v6.14-blue)](https://docs.microsoft.com/sysinternals/downloads/accesschk)
[![Chocolatey package version](https://img.shields.io/chocolatey/v/accesschk?label=Chocolatey)](https://chocolatey.org/packages/accesschk)

AccessChk is a command-line tool for viewing the effective permissions on files, registry keys, services, processes,
kernel objects, and more.

As a part of ensuring that they've created a secure environment Windows administrators often need to know what kind of
accesses specific users or groups have to resources including files, directories, Registry keys, global objects and
Windows services. AccessChk quickly answers these questions with an intuitive interface and output.

Usage: `accesschk [-s][-e][-u][-r][-w][-n][-v]-[f <account>,...][[-a]|[-k]|[-p [-f] [-t]]|[-h][-o [-t <object type>]][-c]|[-d]] [[-l [-i]]|[username]] <file, directory, registry key, process, service, object>`

Parameter | Description
:--------:|------------
-a        | Name is a Windows account right. Specify "*" as the name to show all rights assigned to a user. Note that when you specify a specific right, only groups and accounts directly assigned to the right are displayed.
-c        | Name is a Windows Service, e.g. ssdpsrv. Specify "*" as the name to show all services and "scmanager" to check the security of the Service Control Manager.
-d        | Only process directories or top-level keys
-e        | Only show explicitly set-Integrity Levels (Windows Vista and higher only)
-f        | If following -p, shows full process token information including groups and privileges. Otherwise is a list of comma-separated accounts to filter from the output.
-h        | Name is a file or printer share. Specify '*' as the name to show all shares.
-i        | Ignore objects with only inherited ACEs when dumping full access control lists.
-k        | Name is a Registry key, e.g. hklm\software
-l        | PShow full security descriptor. Add -i to ignore inherited ACEs.
-n        | Show only objects that have no access
-o        | Name is an object in the Object Manager namespace (default is root). To view the contents of a directory, specify the name with a trailing backslash or add -s. Add -t and an object type (e.g. section) to see only objects of a specific type.
-p        | Name is a process name or PID, e.g. cmd.exe (specify "*" as the name to show all processes). Add -f to show full process token information, including groups and privileges. Add -t to show threads
-q        | Omit Banner
-r        | Show only objects that have read access
-s        | Recurse
-t        | Object type filter, e.g. "section"
-u        | Suppress errors
-v        | Verbose (includes Windows Vista Integrity Level)
-w        | Show only objects that have write access

![screenshot](https://cdn.jsdelivr.net/gh/dgalbraith/chocolatey-packages@ab7733d9bd5714cac138fe9e5eec447633fb3d75/automatic/accesschk/screenshot.png)

## Notes

* This package is automatically updated using the [Chocolatey Automatic Package Update Model (AU)](https://github.com/majkinetor/au/blob/master/README.md).
  If you find it is out of date by more than a day or two, please contact the maintainer(s) and let them know the package is no longer updating correctly.
