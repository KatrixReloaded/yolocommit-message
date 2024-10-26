() {
  # %x: name of file containing code being executed
  local fortunes_dir="${${(%):-%x}:h}/fortunes"

  # Aliases
  alias yolomsg="fortune -a $fortunes_dir"
  alias yolo_cow="yolomsg | cowthink -f dragon"
  alias yolocommit="git commit -m \"$(yolomsg)\""
  alias yolo_online_support="printf \"$(curl -s https://whatthecommit.com/index.txt)\""
  alias yolo_online="git commit -m \"$(yolo_online_support)\""

  # Automatically generate or update yolo's compiled fortune data file
  if [[ "$fortunes_dir/yolo" -ot "$fortunes_dir/yolo.dat" ]]; then
    return
  fi

  # For some reason, Cygwin puts strfile in /usr/sbin, which is not on the path by default
  local strfile="${commands[strfile]:-/usr/sbin/strfile}"
  if [[ ! -x "$strfile" ]]; then
    echo "[oh-my-zsh] chucknorris depends on strfile, which is not installed" >&2
    echo "[oh-my-zsh] strfile is often provided as part of the 'fortune' package" >&2
    return
  fi

  # Generate the compiled fortune data file
  $strfile "$fortunes_dir/yolo" "$fortunes_dir/yolo.dat" >/dev/null
}
