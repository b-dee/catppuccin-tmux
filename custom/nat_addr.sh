show_nat_addr() {
  local index=$1
  local icon="$(get_tmux_option "@catppuccin_nat_addr_icon" "")"
  local color="$(get_tmux_option "@catppuccin_nat_addr_color" "$thm_orange")"
  local text="#($PLUGIN_DIR/custom/print_nat_addr.sh)"

  local module=$( build_status_module "$index" "$icon" "$color" "$text" )

  echo "$module"
}
