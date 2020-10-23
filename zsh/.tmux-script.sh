#!/bin/bash

export NVIM_LISTEN_ADDRESS=

tmux setenv NVIM_LISTEN_ADDRESS=/tmp/nvim$(uuidgen) 

