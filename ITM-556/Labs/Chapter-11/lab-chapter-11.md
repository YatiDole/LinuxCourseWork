# Lab - Chapter 11

## Objectives

* Creating virtual disks in VirtualBox
* Creating new partitions in fdisk
* Creating new filesystems with mkfs
* Creating new filesystems in ZFS
* Mounting new filesystems
* Editing /etc/fstab to make our mounts permanent

## Outcomes

At the conclusion of this lab you will have successfully created a new virtual disk in VirtualBox, created new partitions using fdisk, formatted those partitions using mkfs, XFS, and ZFS, and mounted all those partitions manually and automatically using the `/etc/fstab`.

## Lab Activities

For each of the bullet points, take a screenshot of the output of the commands to display the content to demonstrate the concepts.  Note - make your screenshot efficient, and capture only relevant data along with numbering the output.  All disks that are created can be 2 GB unless noted.

1. Create 1 virtual drive in VirtualBox:

   a. Use fdisk to create a primary partition
   b. Format it with ext4
   c. Mount it to /mnt/disk1
   d. Add it to your fstab

2. Create 2 more virtual drives:

   a. Create a single volume group named vg-group
   b. Create 1 logical volume named lv-group using the two drives
   c. Format it with XFS
   d. Mount it to /mnt/disk2
   e. Add the lv-group to your fstab, reboot the system and `cat` the  `/etc/fstab` and show that your entry is present.

3. Using the same LVM as before:

   a. Add an additional VirtualBox disk and the create a LVM physical disk
   b. Grow the volume group and logical volume
   c. Grow the XFS file system

4. Using LVM of the previous exercise on the logical volume lv-group

   a. Using either `fallocate` or `truncate` commands, create a file 25 megabytes in size and name it **datadump.txt**
   b. Following this tutorial: [http://tldp.org/HOWTO/LVM-HOWTO/snapshotintro.html](http://tldp.org/HOWTO/LVM-HOWTO/snapshotintro.html "LVM Snapshot intro") create an LVM snapshot of the logical volume named lv-backup
   c. Mount the snapshot to /mnt/disk3 (create this location if not existing)
   d. `ls -l` the contents of /mnt/disk3

5. Launch a copy of Fedora and follow the all the instructions to install ZFS on Fedora: [https://github.com/zfsonlinux/zfs/wiki/Fedora](https://github.com/zfsonlinux/zfs/wiki/Fedora "ZFS on Linux for Fedora")

   a. Attach two additional virtual disks to the Fedora 30 Virtual Machine
   b. Create a zpool stripe containing both disks
   c. Execute a `zpool status` command to display the contents of the zpool

6. Using Ubuntu 18.04 or higher, set networking to bridged mode (take note of your public IP by typing: `ip a sh`

   a. Attach a virtual disk
   b. Using this tutorial: [https://www.hiroom2.com/2018/05/05/ubuntu-1804-tgt-en/](https://www.hiroom2.com/2018/05/05/ubuntu-1804-tgt-en/ "Configure iSCSI target") configure the system using as an iSCSI target
   c. Use the proper iSCSI command to list the current targets

7. Using a second Ubuntu 18.04 instance with its network mode set to bridged (note the public IP):

   a. Using this tutorial: [https://help.ubuntu.com/lts/serverguide/iscsi-initiator.html](https://help.ubuntu.com/lts/serverguide/iscsi-initiator.html "Configure iSCSI initiator") configure and complete iSCSI initiator
   b. List the currently available iSCSI targets on your network
   c. Create two files on the connected iSCSI target - `file1.txt` and `file2.txt` and list those files

8. Create 3 Virtual disks and install the ZFS package:

   a. Attach it to an existing Ubuntu 18.04 system
   b. Create a zpool stripe with two disks name it **datapool**
   c. Execute a `zpool status` and a `zpool list` command
   d. Expand the capacity of the zpool by adding the third disk in
   e. Execute the `zpool status command
   f. Execute the command to take the first disk out of the zpool, this command fails, why? Capture the error message in a screenshot

9. From the previous exercise using your ZFS pool named datapool, create a 25 megabyte file named datadump.txt:

   a. Attach a third virtual disk to the system and create a zpool named backup
   b. Execute the `ls -l` command to display the file and its size
   c. Take a ZFS snapshot of the datapool named @today
   d. Using the ZFS send and recv commands copy the @today snapshot to the zpool named backup
   e. Execute `ls -l` command on the zpool backup
   f. Using the commandline, append an additional 25 mb to `/datapool/datadump.txt`
   g. Execute an `ls -l` on zpool datapool and backup to compare the two files

10. On the same Ubuntu 18.04 system, create a systemd mount.unit file for both ZFS partitions created in the previous exercise.

    a. List both contents here
    b. Reboot the system and make sure it works

11. Using the 2 Ubuntu 18.04 systems you used in exercises 7 and 8, create a 25 megabyte file named databasedump.txt on the zpool datapool:

    a. On the first system (the system without zpool datapool), create a datapool name backuppool (you might need to attach a virtual disk to do this)
    b. Take a snapshot of the zpool datapool and name it @now
    c. Execute the remote send and recv command over ssh to migrate the snapshot to the pool backuppool (You may need to exchange SSH keys via `ssh-keygen` and `ssh-copy-id` first to make this work)

12. On the zpool named datapool on Ubuntu:

    a. Execute a ```zpool status``` command
    b. Enable LZ4 compression on the zpool datapool
    c. Execute a zpool list command to display that compression is enabled

13. On the zpool named datapool, execute a `zpool status` command:

    a. Execute a scrub of the zpool datapool
    b. Create a cron job that executes a zfs scrub on the zpool datapool at 3 am every Sunday morning

14. Using the sample from the text on your Ubuntu 18.04 system, add two additional virtual disks:

    a. Create two partitions on each of these devices
    b. Then using the sample code add these two devices as a log and a cache to the zpool datapool
    c. Execute a `zpool status` command for the zpool named datapool

15. On your Fedora system execute, any of the commands listed to print out the disk serial numbers.

16. Using an Ubuntu system of your choice, create two pair of four 2-GB virtual disks.  Create a ZFS stripe on one of the four disk arrays and create a ZFS equivalent of a RAID 10 (striped mirror) on the other 4 disk array.  Run the command `sudo zpool status` and capture the output.  Name the first zpool, **zstripe** and the second zpool, **zmirror**

    a. Install `mariadb-server` and modify the my.cnf file to remount the database storage from `/var/lib/mysql` to be `/zstripe/mysql`: restart the service and execute the `sudo systemctl status mysql` command to show the service successfully restart and is now mounted in a new location.  Note, you will need to `chown` the new zstripe mount to get write permissions.

17. Using an OS of your choice, install the `btrfs-tools` package.  Create a 2 GB Virtual Disk.  On this disk create a 1 GB Ext4 partition.  Using the `btrfs-convert` program [convert the partition](https://btrfs.wiki.kernel.org/index.php/Conversion_from_Ext3 "Btrfs wiki") from ext4 to Btrfs: `sudo btrfs-convert /dev/xxx`.  Take a screenshot of the command output.

18. Using an OS of your choice, create 4 2 GB Virtual Disks.  Create a [Btrfs RAID 10](https://btrfs.wiki.kernel.org/index.php/UseCases#How_do_I_create_a_RAID10_striped_mirror_in_Btrfs.3F "btrfs RAID 10") (mirror and stripe) on these four disks. Download one of the Ubuntu 18.04 ISO files onto your Btrfs partition.  Using the [btrfs-replace command](https://btrfs.wiki.kernel.org/index.php/Manpage/btrfs-replace "btrfs-replace"). Add a fifth virtual disk and replace device `/dev/sde` with the new virtual disk.

    a. Run the `btrfs filesystem show` command and capture the output.
    b. Using the UID of the btrfs device created in the previous step, add the mount point to the `/etc/fstab` and add the `nodatacow` attribute. Mount point options are listed here: [btrfs mount-point options](https://btrfs.wiki.kernel.org/index.php/Manpage/btrfs(5) "btrfs mount-point options")
   
19. Download a copy of Ubuntu 19.10 and when going through the installer, choose the [EXPERIMENTAL erase disk and use zfs](https://ubuntu.com/blog/enhancing-our-zfs-support-on-ubuntu-19-10-an-introduction "ZFS on Ubuntu Root").  Once the install is complete, upon first login, execute the `sudo zpool status` command and capture the output.

20. This is a research question regarding current hardware. Using [Newegg.com](http://newegg.com "Newegg.com"), find the current price per Gigabyte for the following along with listing the throughput of the drive and make a chart of the results.

    a. Seagate Barracuda 4 TB
    b. Western Digital Blue 1 TB
    c. Western Digital Red 10 TB
    d. Samsung 970 EVO M.2 500 GB
    e. Corsair Force MP300 M.2 960 GB
    f. Intel Optane M.2 32 GB and explain what 3D XPoint technology is
