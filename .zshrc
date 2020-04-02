#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi


PM_BASEDIR=/mnt/50tbd/HCP_source
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/home/a-fsobczak/programs/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/home/a-fsobczak/programs/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/a-fsobczak/programs/anaconda3/etc/profile.d/conda.sh"
#         CONDA_CHANGEPS1=false conda activate base
        CONDA_CHANGEPS1=false conda activate pt
    else
        \export PATH="/home/a-fsobczak/programs/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup

## # Manual conda alternative
## . /home/a-fsobczak/programs/anaconda3/etc/profile.d/conda.sh

# Customize to your needs...
source /home/a-fsobczak/programs/zsh-prezto/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/a-fsobczak/programs/zsh-prezto/zsh-history-substring-search/zsh-history-substring-search.zsh
# keybindings for substring-search
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

# for tensorflow to work, this variable needs to be created
export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH

# add a local dir with executable symbolic links to search path
export PATH=$PATH:/home/a-fsobczak/bin/

# deactivate the (base) conda env. and activate (pt). Otherwise this needs to be done in every term...
conda deactivate; conda activate pt

# HCPM - specify data location
export HCPM_BASEDIR=/mnt/50tbd/HCP_source
export HCPM_DATA=/home/a-fsobczak/code/hcpm/data_sample

# AFNI
export PATH=$PATH:/home/a-fsobczak/abin/
# add afni Roi Average plugin
export AFNI_ALLOW_ROIAVERAGE_PLUGIN=YES

# go - a YouCompleteMe (vim plugin) requirement
export PATH=$PATH:/usr/local/go/bin

bindkey -v

