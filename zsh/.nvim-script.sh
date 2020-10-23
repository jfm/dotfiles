#!/bin/bash
export NVIM_LISTEN_ADDRESS=/tmp/nvim$(uuidgen)

termite -e tmux

