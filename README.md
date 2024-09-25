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

## Disclaimer
the software is provided "as is", without warranty of any kind, express or implied, including but not limited to the warranties of merchantability, fitness for a particular purpose and oninfringement. in no event shall the authors or copyright holders be liable for any claim, damages or other liability, whether in an action of contract, tort or otherwise, arising from, out of or in connection with the software or the use or other dealings in the software.
