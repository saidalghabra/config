if ! [[ -f /home/linuxbrew/.linuxbrew/bin/brew ]] || is-tmux; then
  return 0
fi

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
echo 001g end
