#!/bin/sh
# Modified from: https://jurf.github.io/2020/03/24/vscode-toolbox/

sudo dnf install --assumeyes openssh-server
sudo /usr/libexec/openssh/sshd-keygen rsa
sudo /usr/libexec/openssh/sshd-keygen ecdsa
sudo /usr/libexec/openssh/sshd-keygen ed25519

echo "
# For VS Code
Port 22$(cat /etc/fedora-release | grep -o '[0-9]*')                 # Prevent conflicts with other SSH servers
ListenAddress localhost   # Don’t allow remote connections
PermitEmptyPasswords yes  # Containers lack passwords by default
PermitUserEnvironment yes # Allow setting DISPLAY for remote connections" | sudo tee -a /etc/ssh/sshd_config

echo "
Host toolbox-$(cat /etc/fedora-release | grep -o '[0-9]*')
    HostName localhost
    Port 22$(cat /etc/fedora-release | grep -o '[0-9]*')" >> ~/.ssh/config

echo "
[Desktop Entry]
Name=SSH 22$(cat /etc/fedora-release | grep -o '[0-9]*')
Comment=SSH Server (port 22$(cat /etc/fedora-release | grep -o '[0-9]*')) for Fedora Toolbox $(cat /etc/fedora-release | grep -o '[0-9]*')
Exec=toolbox --container fedora-toolbox-$(cat /etc/fedora-release | grep -o '[0-9]*') run sudo /usr/sbin/sshd
Type=Application" > ~/.config/autostart/toolbox-$(cat /etc/fedora-release | grep -o '[0-9]*')-sshd.desktop

sudo /usr/sbin/sshd

