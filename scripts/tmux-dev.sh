#!/bin/bash
# Development tmux session

SESSION="dev"

# Kill existing session if exists
tmux kill-session -t $SESSION 2>/dev/null

# Create new session with first window named 'code'
tmux new-session -d -s $SESSION -n 'code'

# Create additional windows
tmux new-window -t $SESSION -n 'run'
tmux new-window -t $SESSION -n 'git' 'lazygit'
tmux new-window -t $SESSION -n 'misc'

# Start at first window
tmux select-window -t $SESSION:1

# Attach to session
tmux attach-session -t $SESSION
