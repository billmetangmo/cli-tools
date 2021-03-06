set -e

sudo apt update && sudo apt install -y wget curl python3-pip git

sudo apt install pipx
pipx install tldr && pipx install rich-cli  && pipx install thefuck
pipx install pipenv && pipx install pip-run && pipx install pip-tools && \
pipx install pip-autoremove && pipx install "pypi-command-line[speedups]"
pipx install jc # transform all cmd output to json
pipx install doitlive && pipx install terminalizer # record terminal
pipx install visidata && pipx install datasette && pipx install csv-to-sqlite
pipx install memray && pipx install fastero # evaluate python performance
pipx install jut # render python notebook in CLI
pipx install httpie # modern curl
pipx install pre-commit # tools for commit check
pipx install detect-secrets

sudo apt install ncdu duf -y # disk usage
sudo apt install autojump -y # memory for change directory

cd /tmp &&\
wget https://github.com/marcosnils/bin/releases/download/v0.15.0/bin_0.15.0_Linux_x86_64 &&\
mv bin_0.15.0_Linux_x86_64 bin &&\
chmod u+x bin &&\
sudo mv bin /usr/local/bin

bin ls
bin install github.com/marcosnils/bin
bin install github.com/junegunn/fzf # fuzzy find
bin install github.com/joehillen/sysz # systemctl fuzzy find ( needs fzf)
bin install github.com/antonmedv/fx # terminal json viewer
bin install github.com/charmbracelet/glow # markdown render on the CLI
bin install github.com/parca-dev/parca # python perfomance
bin install github.com/multiprocessio/dsq # sql against json,csv ...
bin install github.com/lucagrulla/cw # cloudwatch logs easily
bin install github.com/timvisee/ffsend 
bin install github.com/homeport/termshot # beautiful screen picture of cmd
#bin install docker://hieven/terraform-visual-cli
bin install github.com/aristocratos/btop

bin install github.com/ycd/dstp # common networking tests
bin install github.com/ekzhang/bore # local tunneling
bin install github.com/imsnif/bandwhich # bandwith used per app
sudo setcap cap_sys_ptrace,cap_dac_read_search,cap_net_raw,cap_net_admin+ep `which bandwhich`
bin install github.com/orf/gping # graph a command ping but alos others with --cmd

sudo add-apt-repository ppa:cncf-buildpacks/pack-cli
sudo apt-get update
sudo apt-get install pack-cli

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
nvm install v16.13.2
npm install -g terminalizer
npm install -g localtunnel
bash <(curl https://raw.githubusercontent.com/ellie/atuin/main/install.sh)
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.0


curl https://raw.githubusercontent.com/billmetangmo/cli-tools/main/dotfiles/bashrc --output ~/.bashrc
