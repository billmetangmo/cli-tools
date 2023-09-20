set -e

sudo apt update && sudo apt install -y wget curl python3-pip git
curl https://raw.githubusercontent.com/GitAlias/gitalias/main/gitalias.txt -o gitalias.txt
git config --global include.path gitalias.txt

sudo apt install pipx
pipx install tldr && pipx install rich-cli  && pipx install thefuck
pipx install pipenv && pipx install pip-run && pipx install pip-tools && \
pipx install pip-autoremove && pipx install "pypi-command-line[speedups]"
pipx install jc # transform all cmd output to json
pipx install doitlive && npm install -g terminalizer # record terminal
pipx install visidata && pipx install datasette && pipx install csv-to-sqlite
pipx install memray && pipx install fastero # evaluate python performance
pipx install jut # render python notebook in CLI
pipx install pre-commit # tools for commit check
pipx install detect-secrets
pipx install saws
pipx runpip saws install aws

sudo apt install ncdu duf -y # disk usage
sudo apt install autojump -y # memory for change directory

cd /tmp &&\
wget https://github.com/marcosnils/bin/releases/download/v0.17.0/bin_0.17.0_Linux_x86_64 &&\
mv bin_0.17.0_Linux_x86_64 bin &&\
chmod u+x bin &&\
sudo mv bin /usr/local/bin

bin ls
bin install github.com/marcosnils/bin
bin install github.com/junegunn/fzf # fuzzy find
bin install github.com/truefoundry/secretsfoundry
bin install github.com/joehillen/sysz # systemctl fuzzy find ( needs fzf)
bin install github.com/antonmedv/fx # terminal json viewer
bin install github.com/charmbracelet/glow # markdown render on the CLI
bin install github.com/parca-dev/parca # python perfomance
bin install github.com/multiprocessio/dsq # sql against json,csv ...
bin install github.com/lucagrulla/cw # cloudwatch logs easily
bin install https://github.com/samwho/spacer # insert spacers when command output stops
bin install github.com/timvisee/ffsend 
bin install github.com/homeport/termshot # beautiful screen picture of cmd
bin install github.com/aristocratos/btop
bin install https://github.com/tsl0922/ttyd
bin install https://github.com/sethvargo/ratchet
bin install https://github.com/jesseduffield/lazygit
bin install https://github.com/jesseduffield/lazydocker

# Terraform
bin install https://github.com/im2nguyen/rover 
bin install https://github.com/dineshba/tf-summarize

bin install https://github.com/denisidoro/navi
bin install https://github.com/schollz/croc # file send
bin install https://github.com/rs/curlie # modern curl
bin install https://github.com/mgdm/htmlq
bin install https://github.com/tstack/lnav

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

# AWS
npm install --global basti
bin install https://github.com/lucagrulla/cw

bin install https://github.com/nektos/act
pipx install bitbucket-pipeline-runner
pipx install gitlabci-local
npm install -g gitlab-ci-local #https://github.com/firecow/gitlab-ci-local


curl https://raw.githubusercontent.com/billmetangmo/cli-tools/main/dotfiles/bashrc --output ~/.bashrc
