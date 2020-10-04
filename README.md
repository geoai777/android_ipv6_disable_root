# Disable ipv6 on rooted Android devices

## Requirements
root, su

## Usage
make some folder in `/system` (for example `script` with Solid Explorer)
copy file to `/system/script`
`chmod 0700 /system/script/i6.sh`
`cd /system/script`

Then:
- `./i6 s` - status
- `./i6 e` - enable ipv6
- `./i6 d` - disable ipv6

