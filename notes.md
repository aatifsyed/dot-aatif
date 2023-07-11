# #############
# # Create user
# #############
# # --gecos "": no metadata
# adduser --disabled-password --gecos "" $ssh_user
# addgroup $ssh_user sudo
# echo "$ssh_user ALL=(ALL:ALL) NOPASSWD: ALL" | ( EDITOR="tee --append" visudo )
# install --mode=0700 --group=$ssh_user --owner=$ssh_user --directory /root/.ssh /home/$ssh_user/.ssh
# install --mode=0600 --group=$ssh_user --owner=$ssh_user /root/.ssh/authorized_keys /home/$ssh_user/.ssh/authorized_keys


# cat ~/.ssh/authorized_keys | \
#     docker run --rm --interactive --publish 2222:22 mcr.microsoft.com/devcontainers/rust bash -c 'tee /tmp/authorized_keys  && mkdir --parents /etc/ssh/ && install --mode=0655 /tmp/authorized_keys /etc/ssh/authorized_keys && apt update && apt install --yes openssh-server tini && mkdir /run/sshd && tini -- /usr/sbin/sshd -o AuthorizedKeysFile=/etc/ssh/authorized_keys -D'
