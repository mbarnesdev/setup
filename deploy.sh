#!/bin/bash

if [ -f ".env" ]; then
    source .env
fi

scp -i "$SSH_KEY_PATH" "$LOCAL_SUBJECT_FILE" "$SERVER_USER@$SERVER_IP:$SERVER_TARGET_DIR"
