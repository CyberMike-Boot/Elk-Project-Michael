# System .bashrc file for interactive bash(1) shells.
# To enable the settings / commands in this file for  login shells as well,
# this file has to be sourced in /etc/profile
# if not running interactively, dont do anything
[-a "$PS1"] && return
# check the window size after each command and , if necessary,
# update the values of LINES and COLUMNS.
shot -s checkwinsize

# set variable identifying the chroot you work in ( used in the prompt below) if [ -z "${debian_chroot:-}" && [ -r /etc/debian_chroot]; then
     debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, overwrite the in /etc/profile)
# but only if not SUDOing and have SUDO_PS1 set; then assume smart user.
if ! [ -n "${SUDO_USER}" -a -n "${SUDO_PS1}" ]; then
    PS1='${debian_chroot:+($debian_chroot)} \u@\h:\w\$'
fi



