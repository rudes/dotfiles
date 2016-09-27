tm_icon=λ

tm_status_bg="colour235"
tm_status_fg="colour253"
tm_message_command_fg="colour222"
tm_message_command_bg="colour238"
tm_message_bg="colour238"
tm_message_fg="colour222"
tm_pane_active_border_fg="colour154"
tm_pane_border_fg="colour238"
tm_window_status_fg="colour121"
tm_window_status_bg="colour235"
tm_window_status_active_fg="colour154"
tm_window_status_active_bg="colour235"

set -g status-interval 5
set-option -g display-time 4000

set-option -g status-bg $tm_status_bg
set-option -g status-fg $tm_status_fg
set-option -g status-attr default

set-window-option -g window-status-fg $tm_window_status_fg
set-window-option -g window-status-bg $tm_window_status_bg
set -g window-status-format "#I #W"

set-window-option -g window-status-current-fg $tm_window_status_fg
set-window-option -g window-status-current-bg $tm_window_status_bg
set -g window-status-current-format "#[bold]#I #W"

set-option -g pane-border-fg $tm_pane_border_fg
set-option -g pane-active-border-fg $tm_pane_active_border_fg

set-option -g message-bg $tm_message_bg
set-option -g message-fg $tm_message_fg

tm_date="%R %d %b"
tm_host="#h"
tm_ip="#(~/.tmux/tmux_status.sh)"
tm_session_name="$tm_icon #S"

set -g status-left $tm_session_name' '
set -g status-right $tm_date' | '$tm_host" | "$tm_ip
set-option -g status-justify centre
