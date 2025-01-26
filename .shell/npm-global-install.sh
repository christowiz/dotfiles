#!/bin/bash

PNPM_APPS=(
  # alfred-updater
  # alfred-bundlephobia
  bundle-phobia-cli
  chii
  corepack
  degit
  depcheck
  es-check
  fkill-cli
  git-alias
  git-open
  goops
  http-server
  list-scripts
  live-server
  local-ssl-proxy
  memlab
  # node-inspector
  npkill
  npm
  npm-check
  npm-check-unused
  npm-check-updates
  npm-completion
  npm-ls-scripts
  serve
  sirv-cli
  trash-cli
)

pnpm add -g "${PNPM_APPS[@]/%/@latest}"
