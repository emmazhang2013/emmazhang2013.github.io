#!/usr/bin/env bash

set -euo pipefail

host="${1:-127.0.0.1}"
port="${2:-4000}"
repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

export PATH="$HOME/.rubies/ruby-3.4.1/bin:$PATH"
export LANG="${LANG:-en_US.UTF-8}"
export LC_ALL="${LC_ALL:-en_US.UTF-8}"

cd "$repo_root"

if ! bundle check >/dev/null 2>&1; then
  bundle install
fi

exec bundle exec jekyll serve --host "$host" --port "$port"
