# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Directory shortcut aliases
alias bin="cd $HOME/.local/bin"

# FZF styling
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
	--color=fg:#a9b1d6,fg+:#ced8ff,bg:#1a1b26,bg+:#1a1b26
	--color=hl:#9ece6a,hl+:#b0e27c,info:#7aa2f7,marker:#7dcfff
	--color=prompt:#9ece6a,spinner:#7dcfff,pointer:#e0af68,header:#e0af68
	--color=border:#c0caf5,label:#e0af68,query:#9ece6a
	--border="rounded" --border-label="" --preview-window="border-rounded" --prompt="  "
	--marker="󰐃" --pointer=" " --separator="" --scrollbar=""
	--layout="reverse" --info="right"
	--height=25%
	--border-label-pos=4'

# Git bare alias for dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

# FZF for pacman stuff
alias pss="pacman -Ssq | fzf --border-label=' 󰮯 󰇘 Pacman 󰇘  ' --header='INSTALL:' | xargs -ro sudo pacman -S"
alias psr="pacman -Qsq | fzf --border-label=' 󰮯 󰇘 Pacman 󰇘  ' --header='REMOVE:' | xargs -ro sudo pacman -Rns"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
	zsh-vi-mode
	zsh-syntax-highlighting
	colored-man-pages
	colorize
)

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
source $ZSH/oh-my-zsh.sh

# User configuration
export KEYTIMEOUT=1

# A few bindkeys for CTRL-hjkl vimlike suggestion navigation
bindkey -M viins -r "^K"
bindkey -M viins -r "^J"
bindkey -M viins -r "^H"

# This key is overritten by zvm mode, which is run after .zshrc is sourced
# So this has to be defined as so.
zvm_after_init_commands+=('
	bindkey	-M viins "^K" reverse-menu-complete
')
bindkey -M viins "^J" expand-or-complete
bindkey -M viins "^H" undo

bindkey	-M menuselect "^K" reverse-menu-complete
bindkey	-M menuselect "^J" expand-or-complete
bindkey -M menuselect "^L" accept-line
bindkey -M menuselect "^H" undo

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
