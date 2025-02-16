# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/angelo.souza/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
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
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	zsh-autosuggestions
# 	dotenv
)

source $ZSH/oh-my-zsh.sh
source ~/.nurc

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
	
# Compilation flags
# export ARCHFLAGS="-arch x86_64"

#Functions
function code-nu() {
  code ${HOME}/dev/nu/$1
}

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="sudo code ~/.zshrc"
alias l="ls -la"
alias rmdir="rm -rf"
alias cc="code ./"
alias npmsd="npm run start:dev"
alias npmd="npm run dev"
alias ys="yarn start"
alias ysd="yarn start:dev"
alias std="shutdown now"
alias killAll='(){kill $(pgrep -f $1)}'
alias pip="pip3"
alias p="python3"
alias activevenv="source venv/bin/activate"
alias gaap="gaa && gca! && gpf!"
alias rmdir="sudo rm -R"
alias update-dotfiles="code --list-extensions | sed -e 's/^/code --install-extension --force /' > ~/dotfiles/vscode/extensions.sh && gaa && gcmsg 'update dotfiles' && gp"
alias refresh-credentials-br="nu aws shared-role-credentials refresh --account-alias=br --keep-policies casual-dev,eng,eng-prod-engineer && nu codeartifact login maven"
alias morning="echo -e '${LIGHT_BLUE}Updating nucli, cljdev, purple and authorizer-scripts\n${NC}'; nu proj update nucli purple authorizer-scripts cljdev;
			   echo -e '${LIGHT_GREEN}Refreshing BR AWS credentials${NC}'; nu aws shared-role-credentials refresh --account-alias=br --keep-policies prod-eng,eng,eng-prod-engineering,infra-ops,permissions-admin,shared-systems-resources && nu codeartifact login maven;
			   echo -e '${LIGHT_GREEN}Refreshing MX AWS credentials${NC}'; nu-mx aws credentials refresh;
			   echo -e '${LIGHT_GREEN}Refreshing CO AWS credentials${NC}'; nu-co aws credentials refresh"
alias gaaf="lein lint-fix && gaa"
alias awsconsole="nu aws shared-role-credentials web-console --account-alias br --keep-policies eng,casual-dev,eng-prod-engineering,prod-eng"

source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

prompt_context () { }
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# Showing time
RPROMPT="%{$fg[yellow]%}[%D{%f/%m/%y} | %D{%L:%M:%S}]"

export NU_HOME=${HOME}/dev/nu
export NUCLI_HOME=${NU_HOME}/nucli
export PATH=${NUCLI_HOME}:${PATH}
export A8R_HOME="${NU_HOME}/authorizer-scripts"
export PATH="${A8R_HOME}:${PATH}"
export NU_COUNTRY=br

# {mark} START IT-ENG NVM SETUP
export NVM_DIR="/Users/angelo.souza/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && source "/usr/local/opt/nvm/nvm.sh"
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && source "/usr/local/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

# GPG
export GPG_TTY=$(tty)
export PINENTRY_USER_DATA="USE_CURSES=1"
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# Java
export JAVA_HOME=/Users/angelo.souza/.sdkman/candidates/java/current
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && source "/usr/local/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion
