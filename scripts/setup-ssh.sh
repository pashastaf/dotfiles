ssh-keygen -C "pashastaf1@gmail.com"
xclip -selection clipboard ~/.ssh/id_ed25519.pub
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_rsa
