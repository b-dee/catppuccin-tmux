show_ip() {
  local index=$1
  local icon="$(get_tmux_option "@catppuccin_ip_icon" "")"
  local color="$(get_tmux_option "@catppuccin_ip_color" "$thm_orange")"
  local text="#(whoami)"

  local module=$( build_status_module "$index" "$icon" "$color" "$text" )

  echo "$module"
}
