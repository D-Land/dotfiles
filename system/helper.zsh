function rainbow(){
  for id in {000..255}; do
    print -P -- "$id: %F{$id}The Quick Brown Fox Jumps Over The Lazy Dog%f"
  done
}
