{
  eval "$(ssh-agent -s)" 
  [[ -f "$HOME/.ssh/github_saidalghabra" ]] && ssh-add "$HOME/.ssh/github_saidalghabra"
} &> /dev/null
