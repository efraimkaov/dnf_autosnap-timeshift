# dnf_autosnap-timeshift

This is a simple hack which creates timeshift snapshots before installing/reinstalling/removing/upgrading packages with new commands in distributions like Fedora with dnf package manager.

The advantage is that you can always run regular `dnf` commands without snapshots.

You need to have timeshift installed and configured before running this script.

```sh
ek@efraimkaov:~$ chmod +x dat.sh
ek@efraimkaov:~$ ./dat.sh
```
## How to use

* Run `dnf-in <package>` instead of `sudo dnf install <package>`
* Run `dnf-rei <package>` instead of `sudo dnf reinstall <package>`
* Run `dnf-rm <package>` instead of `sudo dnf remove <package>`
* Run `dnf-up <package>` instead of `sudo dnf upgrade <package>`

## Simple example with output

```sh
[ek@efraimkaov ~]$ dnf-in mc -y
[sudo] password for ek:
Using system disk as snapshot device for creating snapshots in BTRFS mode

/dev/vda5 is mounted at: /run/timeshift/backup, options: rw,relatime,compress=zstd:1,space_cache,subvolid=5,subvol=/

Creating new backup...(BTRFS)
Saving to device: /dev/vda5, mounted at path: /run/timeshift/backup
Created directory: /run/timeshift/backup/timeshift-btrfs/snapshots/2021-09-13_14-02-32
Created subvolume snapshot: /run/timeshift/backup/timeshift-btrfs/snapshots/2021-09-13_14-02-32/@
Created control file: /run/timeshift/backup/timeshift-btrfs/snapshots/2021-09-13_14-02-32/info.json
BTRFS Snapshot saved successfully (0s)
Tagged snapshot '2021-09-13_14-02-32': ondemand
------------------------------------------------------------------------------
Last metadata expiration check: 2:08:29 ago on Mon 13 Sep 2021 11:54:16 AM EEST.
Dependencies resolved.
====================================================================================================================
 Package               Architecture              Version                            Repository                 Size
====================================================================================================================
Installing:
 mc                    x86_64                    1:4.8.26-3.fc34                    fedora                    1.9 M

Transaction Summary
====================================================================================================================
Install  1 Package

Total download size: 1.9 M
Installed size: 7.1 M
Downloading Packages:
mc-4.8.26-3.fc34.x86_64.rpm                                                         716 kB/s | 1.9 MB     00:02    
--------------------------------------------------------------------------------------------------------------------
Total                                                                               491 kB/s | 1.9 MB     00:04     
Running transaction check
Transaction check succeeded.
Running transaction test
Transaction test succeeded.
Running transaction
  Preparing        :                                                                                            1/1 
  Installing       : mc-1:4.8.26-3.fc34.x86_64                                                                  1/1 
  Running scriptlet: mc-1:4.8.26-3.fc34.x86_64                                                                  1/1 
  Verifying        : mc-1:4.8.26-3.fc34.x86_64                                                                  1/1 

Installed:
  mc-1:4.8.26-3.fc34.x86_64                                                                                         

Complete!
[ek@efraimkaov ~]$
```

Soon I will show you how to install Fedora with properly btrfs subvolumes compatible with timeshift.

