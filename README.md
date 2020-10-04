# Disable ipv6 on rooted Android devices

## Requirements
root, su, Solid Explorer (or any file manager with /system access), Terminal Emulator

## Usage
make some folder in `/system` (for example `mkdir /system/script` with Solid Explorer)<br>
copy file to `/system/script`<br>
`chmod 0700 /system/script/i6.sh`<br>
`cd /system/script`<br>

Then:
- `./i6 s` - status
- `./i6 e` - enable ipv6
- `./i6 d` - disable ipv6

