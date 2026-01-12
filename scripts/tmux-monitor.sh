#!/bin/bash
# Monitoring tmux session

SESSION="monitor"

# Kill existing session if exists
tmux kill-session -t $SESSION 2>/dev/null

# Create new session with btop
tmux new-session -d -s $SESSION -n 'system' 'btop'

# Create GPU window
tmux new-window -t $SESSION -n 'gpu' 'nvtop'

# Create terminal window
tmux new-window -t $SESSION -n 'term'

# Start at first window
tmux select-window -t $SESSION:1

# Attach to session
tmux attach-session -t $SESSION