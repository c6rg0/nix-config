
# Hyprland:
- How to disable and enable monitors:

    Find to find the monitor variable:
        $ hyprctl monitors
    Example values:
        eDP-1
        HDMI-A-3

    In the hyprland.conf monitor section, write:
        monitor = eDP-1, disable
            or
        monitor = eDP-1, 1920x1080@59.59, auto, 1, vrr, 1
            (make sure that the values are adjusted to work)

- How to enable/disable iGPU:
    
    Find the path to your dedicated GPU:
        $ ls /dev/dri/card0

    Umm, figure out which gpu is which:
        With "nvtop", you can see if hyprland is using the 
        dGPU or iGPU, just use trial and error with the next
        step lol.

    In the hyprland.conf env variables section, write:
        env = AQ_DRM_DEVICES,/dev/dri/card0
       

# node.js
Error: The module '/home/gabriel/Code/NEA/node_modules/better-sqlite3/build/Release/better_sqlite3.node' was compiled against a different Node.js version using:

    You have to rebuild the packages (?):
        $ npm ci (this worked so don't ask why)


# To mount and use a USB in the terminal:
- Identify the stick, in the cli;
`lsblk`,
The most common names are "sbd", or "sda" with an nvme ssd present.

- Identify the partition you want to mount;
You have to mount the partition(s), not the "drive".
Under `lsblk` and the name of the stick, find the parition
you want to mount, which always has a number (ex. sda1).

- Mount;
Actually, you need to make a mount point - a location where the
drive will be mounted - `sudo mkdir -p /mnt/sda1`.
Finally -  `sudo mount /dev/sda1 /mnt/sda1`.

- Unmounting safely:
Linux (and UNIX I assume) handle files in a pretty funky way,
in short, it can give the impression that file transfers are quicker
and they actually are by writting to a buffer, and later in the background
writting to the intended location. If the drive was to be ripped out
of it's hub while the system does its thing, you could risk problems
(don't take any of this to heart, this is simply what I picked up,
not learnt).
Yap asside, just run `sync` after file transfers or add it to the end
of whatever command - `cp file_on_the_stick file_on_laptop && sync`.
Yep, all of that for a 4 letter command...

- Unmounting (the finale):
`sudo umount /mnt/sda1`
it's not unmount lol.


# Making a bootable usb
`sudo umount /mnt/sda1`
`sudo mkfs.fat -F 32 /dev/sda1`,
`dd bs=4M if=/home/gabriel/Downloads/nixos.iso of=/dev/sda1 conv=fsync oflag=direct status=progress`

# Github git SSH address
- git@github.com:username/repo.git 


# Maintaining a nix package
- Make sure that the pr to come isn't going to be a duplicate:
    - because an update to one causes an update to another (fastfetchMinimal & fastfetch),
    - or because the package has already been put to staging recently, and the initial pr was a while ago).
- Fork nixpkgs on github (this has already been done),
- Go to Code/,
- Clone the newly forked repo,
- Make the according branch:
    - For pastel, make:
    - `git checkout -b update-pastel`
- Update the package:
    - Change the version numbers,
    - Remove the hashes in the `package.nix`,
    - Go to root of nixpkgs (`~/Code/nixpgs/`),
    - Run `nix-build -A [package-name]`,
    - The hashes will be given, refill them in the package.nix,
    - Keep on doing the last 2 steps until it finally builds properly,
- Test the package:
    - Once it has successfully been tested,
    - Check basic functionality by running `./results/bin/[package-name] --version`,
    - or `./results/bin/[p-n] --help`.
    - That's enough insurane for a simple package, otherwise, do a pasthru test (using qemu).
- Send a pull request,
- Staging the package:
    - If the package will cause a singificant number of rebuilds, it has to go through 
      heavy CI and testing,
    - (IDK what to do next, I'll fill it out one I get the experience).

- Once complete, go to master branch, sync fork on github, `git fetch`, and now you can make
  a new branch to update more packages; just make sure you make the new branch from master.


# Neovim
[coc.nvim] build/index.js not found, please install dependencies and compile coc.nvim by: npm ci
- Simple, 
- `cd ~/.local/share/nvim/plugged/coc.nvim/`
- `npm ci`



