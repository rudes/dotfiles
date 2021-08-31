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

set -g status-style bg=$tm_status_bg,fg=$tm_status_fg,default
set -g window-status-style bg=$tm_window_status_bg,fg=$tm_window_status_fg
set -g window-status-format "#I #W"
set -g window-status-current-style fg=$tm_window_status_fg,bg=$tm_window_status_bg
set -g window-status-current-format "#[bold]#I #W"
set -g pane-border-style fg=$tm_pane_border_fg
set -g pane-active-border-style fg=$tm_pane_active_border_fg
set -g message-style bg=$tm_message_bg,fg=$tm_message_fg

tm_date="%R %d %b"
tm_host="#h"
tm_ip="#(~/.tmux/tmux_status.sh)"
tm_session_name="#S"

set -g status-left $tm_session_name' '
set -g status-right $tm_date' | '$tm_host" | "$tm_ip
set-option -g status-justify centre
