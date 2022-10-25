for package in ./.{path,aliases,functions}; do
  [ -r "$package" ] && [ -f "$package" ] && source "$package";;
done
unset package;
