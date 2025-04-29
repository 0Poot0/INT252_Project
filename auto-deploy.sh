#!/bin/bash

echo "🕵️‍♀️ Watching for Git changes..."

while true; do
  inotifywait -e modify,move,create,delete -r .git/refs/heads/ > /dev/null 2>&1
  echo "📦 Detected a Git change (likely a push). Running deployment..."
  bash ./deploy.sh
done
