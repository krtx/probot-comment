#!/bin/sh

set -ex

env
cat /github/workflow/event.json

probot receive /app/index.js
