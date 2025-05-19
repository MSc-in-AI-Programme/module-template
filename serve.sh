#!/bin/bash

# Open browser on port 8000
(open http://localhost:8000 &) &

# Start a local server
python3 -m http.server -d _build/html &

# Watch for changes — EXCLUDE _build/
watchmedo shell-command \
  --patterns="*.md;*.ipynb;*.css;*.js;_config.yml;_toc.yml" \
  --ignore-patterns="_build/*" \
  --recursive \
  --command='jupyter-book build .' \
  .
