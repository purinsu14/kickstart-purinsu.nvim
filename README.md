# kickstart.nvim

I USE NEOVIM BTW. Purinsu14's kickstart.nvim config :D.

## Requirements

- `git`, `make`, `unzip`, `gcc`
- [`ripgrep`](https://github.com/BurntSushi/ripgrep#installation), [`fd`](https://github.com/sharkdp/fd#installation)
- [`tree-sitter-cli`](https://github.com/tree-sitter/tree-sitter/blob/master/crates/cli/README.md#installation)
- A clipboard tool (`xclip` on Linux, `win32yank` on Windows)
- Optional: [Nerd Font](https://www.nerdfonts.com/) (set `vim.g.have_nerd_font = true` in `init.lua` if installed)

## Install

Config path by OS:

| OS | Path |
| :- | :--- |
| Linux, macOS | `~/.config/nvim` |
| Windows (cmd) | `%localappdata%\nvim\` |
| Windows (PowerShell) | `$env:LOCALAPPDATA\nvim\` |


### Homebrew (Linux / Windows via WSL)

Works on Ubuntu, Fedora/uBlue, Arch — anything with Homebrew.

```sh
brew install neovim ripgrep fd tree-sitter
git clone https://github.com/purinsu14/kickstart.nvim.git ~/.config/nvim
```

### Ubuntu (apt)

```sh
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update
sudo apt install make gcc ripgrep fd-find tree-sitter-cli unzip git xclip neovim
git clone https://github.com/purinsu14/kickstart.nvim.git ~/.config/nvim
```

### Fedora (dnf)

```sh
sudo dnf install -y gcc make git ripgrep fd-find tree-sitter-cli unzip neovim
git clone https://github.com/purinsu14/kickstart.nvim.git ~/.config/nvim
```

### Arch (pacman)

```sh
sudo pacman -S --noconfirm --needed gcc make git ripgrep fd tree-sitter-cli unzip neovim
git clone https://github.com/purinsu14/kickstart.nvim.git ~/.config/nvim
```

### Windows (Chocolatey)

Run as admin:

```
winget install --accept-source-agreements chocolatey.chocolatey
choco install -y neovim git ripgrep wget fd unzip gzip mingw make tree-sitter
git clone https://github.com/purinsu14/kickstart.nvim.git "%localappdata%\nvim"
```

### WSL

```sh
wsl --install
wsl
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update
sudo apt install make gcc ripgrep fd-find tree-sitter-cli unzip git xclip neovim
git clone https://github.com/purinsu14/kickstart.nvim.git ~/.config/nvim
```

## First Launch

```sh
nvim
```

`vim.pack` installs plugins automatically on first run.

- Update plugins: `:lua vim.pack.update()`
- Check plugin state: `:lua vim.pack.update(nil, { offline = true })`

Read through `init.lua` for configuration notes and plugin examples.

> **_NOTE:_**  If wanna code rust do:

```sh
rustup component add rustfmt --toolchain stable
mkdir -p ~/.config/rustfmt
touch ~/.config/rustfmt/rustfmt.toml
```

then add this to toml:

```toml
imports_granularity = "Crate"
group_imports = "StdExternalCrate"
```

**I want a multi-file config layout.**
See [kickstart-modular.nvim](https://github.com/dam9000/kickstart-modular.nvim).
