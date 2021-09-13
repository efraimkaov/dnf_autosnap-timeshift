# dnf_autosnap-timeshift

This is a simple hack which creates timeshift snapshots before any dnf-in/dnf-rei/dnf-rm/dnf-up command.

The advantage of this hack is that you can always run regular 'dnf' without snapshots.

You need to have timeshift installed and configured before running this script.

```sh
ek@efraimkaov:~$ chmod +x dat.sh
ek@efraimkaov:~$ ./dat.sh
```
## How to use

Run 'dnf-in <package>' instead of 'sudo dnf install <package>'
Run 'dnf-rei <package>' instead of 'sudo dnf reinstall <package>'
Run 'dnf-rm <package>' instead of 'sudo dnf remove <package>'
Run 'dnf-up <package>' instead of 'sudo dnf upgrade <package>'

Soon I will add example how to install Fedora with properly btrfs subvolumes compatible with timeshift.

