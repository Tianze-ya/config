echo "\
PermitRootLogin yes\n\
PubkeyAuthentication no\n\
AuthorizedKeysFile .ssh/authorized_keys\n\
PasswordAuthentication yes\n\
PermitEmptyPasswords no" | sudo tee -a /etc/ssh/sshd_config

sudo systemctl enable ssh
