```bash
sudo apt-get update -y
sudo apt-get install -y zsh git ripgrep fd-find
git clone https://github.com/varungandhi-src/vm
mv vm/.p10k.zsh .
mv vm/.zshrc .
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
curl https://mise.run | sh
```
