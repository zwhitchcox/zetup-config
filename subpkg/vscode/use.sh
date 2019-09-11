#!/bin/bash

mkdir -p "$HOME/.config/Code/User"

snap_classic_install code
brew_cask_install visual-studio-code

sh "$ZETUP_CUR_PKG/subpkg/vscode/import-extensions.sh"

# link settings
user_dirs=(
  "$HOME/.config/Code/User"
  "$HOME/Library/Application Support/Code/User"
)

for user_dir in $user_dirs; do
  if [ -d $user_dir ] ; then
    zetup link "$ZETUP_CUR_PKG/subpkg/vscode/config/settings.json" "$user_dir/settings.json"
    zetup link "$ZETUP_CUR_PKG/subpkg/vscode/config/keybindings.json" "$user_dir/keybindings.json"
  fi
done
