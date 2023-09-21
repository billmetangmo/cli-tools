set -e

sudo apt update && sudo apt install -y wget curl python3-pip git
curl https://raw.githubusercontent.com/GitAlias/gitalias/main/gitalias.txt -o gitalias.txt
git config --global include.path gitalias.txt
git config --global user.email "25366207+billmetangmo@users.noreply.github.com"

sudo apt update
sudo apt install ncdu -y # disk usage
sudo apt install autojump -y # memory for change directory
sudo apt install pipx
pipx install tldr && pipx install rich-cli  && pipx install thefuck
pipx install pipenv && pipx install pip-run && pipx install pip-tools && \
pipx install pip-autoremove && pipx install "pypi-command-line[speedups]"
pipx install jc # transform all cmd output to json
pipx install doitlive && npm install -g terminalizer # record terminal
pipx install datasette && pipx install csv-to-sqlite
pipx install saws
pipx runpip saws install aws

cd /tmp &&\
wget https://github.com/marcosnils/bin/releases/download/v0.17.0/bin_0.17.0_Linux_x86_64 &&\
mv bin_0.17.0_Linux_x86_64 bin &&\
chmod u+x bin &&\
sudo mv bin /usr/local/bin

echo '{
    "default_path": "/usr/local/bin",
    "bins": {}
}' | sudo tee /root/.config/bin/config.json > /dev/null


curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
bash <(curl https://raw.githubusercontent.com/ellie/atuin/main/install.sh)
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.0
curl https://raw.githubusercontent.com/billmetangmo/cli-tools/main/dotfiles/bashrc --output ~/.bashrc
git clone https://github.com/billmetangmo/cli-tools
