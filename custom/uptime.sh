show_uptime() {
  local index=$1
  local icon="$(get_tmux_option "@catppuccin_uptime_icon" "")"
  local color="$(get_tmux_option "@catppuccin_uptime_color" "$thm_blue")"
  local text="#($PLUGIN_DIR/custom/print_uptime.sh)"

  local module=$( build_status_module "$index" "$icon" "$color" "$text" )

  echo "$module"
}
