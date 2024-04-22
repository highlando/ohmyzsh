# If you come from bash you might have to change your $PATH.
export PATH=/usr/local/go/bin:$HOME/.local/bin:$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/heiland/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#
# ZSH_THEME="robbyrussell"
ZSH_THEME="random"
# ZSH_THEME="gnzh-jh"
# ZSH_THEME="takashiyoshida"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.

ZSH_THEME_RANDOM_CANDIDATES=( agnoster arrow eastwood frontcube 
    jbergantine kennethreitz 
    gnzh-jh gnzh-jh gnzh-jh
    lambda mh nanotech nicoulaj refined
    sonicradish takashiyoshida theunraveler wuffers )

ZSH_THEME_RANDOM_IGNORED=(3den 
                          adben afowler alanpeabody amuse aussiegeek avit 
                          bira blinks bureau
                          candy candy-kingdom clean cloud crcandy crunch cypher
                          dallas darkblood daveverwer dieter dpoggi dst dstufft duellj
                          edvardm dogenpunk
                          emotty essembeh evan example
                          fino fino-time fishy flazz fletcherm fox frisk funky
                          gallifrey gentoo geoffgarside gianu gnzh
                          half-life humza 
                          imajes intheloop itchy
                          jaischeema jispwoso josh jonathan jreese
                          jtriley juanghurtado junkfood 
                          kafeitu kardan kiwi kphoen linuxonly
                          lukerandall 
                          macovsky macovsky-ruby maran michelebologna 
                          mikeh miloshadzic minimal mira mrtazz
                          mlh mortalscumbag murilasso
                          nebirhos norm obraun
                          peepcode philips pmcgee pygmalion pygmalion-virtualenv
                          re5et rgm risto rixius rkj rkj-repos
                          simonoff smt Soliah sonicradish steeef
                          takashiyoshida tjkirch tjkirch_mod tonotdo trapd00r
                          sammy simple skaro strug suvash sunaku sunrise
                          terminalparty wedisagree wzem wzem+
                          xiong-chiamiov xiong-chiamiov-plus ys)

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
plugins=(git k z)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias did='nvim -c ":normal G" -c ":r !date --rfc-3339=seconds" -c ":normal i## " -c ":normal o" -c ":normal o * " did.md'
alias getstartwork='cp ~/work/misc/scripts-n-snipts/startwork .'
alias getendwork='cp ~/work/misc/scripts-n-snipts/endwork .'
alias getmkdcsh='cp --preserve=mode ~/work/misc/scripts-n-snipts/mkdc.sh .'
alias getmintex='cp ~/work/latex/misc/blankLat.tex .'
alias sw='./startwork'
alias ew='./endwork'
alias g='nvim'
alias q='exit'
alias gq='nvim-qt'
alias gh='NVIM_LISTEN_ADDRESS=/tmp/nvimsocket nvim'
alias q='exit'
# alias pip3='python3 -m pip'

export OMP_NUM_THREADS=2
export OPENBLAS_NUM_THREADS=2
# disable a warning that is raised by dolfin/fenics all the time
export OMPI_MCA_btl_base_warn_component_unused=0

MYPYPATH=/home/heiland/software/mypys
export PYTHONPATH="$PYTHONPATH:$MYPYPATH/mat_lib_plots"

BLK="04" CHR="04" DIR="04" EXE="00" REG="00" HARDLINK="00" SYMLINK="06" MISSING="00" ORPHAN="01" FIFO="0F" SOCK="0F" OTHER="02"
export NNN_FCOLORS="$BLK$CHR$DIR$EXE$REG$HARDLINK$SYMLINK$MISSING$ORPHAN$FIFO$SOCK$OTHER"

# :$MYPYPATH/sadptprj_riclyap_adi
# :$MYPYPATH/dolfin_navier_scipy
# :$MYPYPATH/spacetime_galerkin_pod
#

# ## for nnn
export VISUAL=nvim
n ()
{
    # Block nesting of nnn in subshells
    if [ -n $NNNLVL ] && [ "${NNNLVL:-0}" -ge 1 ]; then
        echo "nnn is already running"
        return
    fi

    # The default behaviour is to cd on quit (nnn checks if NNN_TMPFILE is set)
    # To cd on quit only on ^G, remove the "export" as in:
    #     NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"
    # NOTE: NNN_TMPFILE is fixed, should not be modified
    export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"

    # Unmask ^Q (, ^V etc.) (if required, see `stty -a`) to Quit nnn
    # stty start undef
    # stty stop undef
    # stty lwrap undef
    # stty lnext undef

    nnn "$@"

    if [ -f "$NNN_TMPFILE" ]; then
            . "$NNN_TMPFILE"
            rm -f "$NNN_TMPFILE" > /dev/null
    fi
}
