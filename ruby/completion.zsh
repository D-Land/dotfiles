# Stolen from
#   https://github.com/postmodern/chruby/issues/27

if [[ ! -o interactive ]]; then
    return
fi

compctl -g '~/.rubies/*(:t)' chruby
