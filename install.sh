#!/usr/bin/env bash

SCRIPT_NAME=$1
HOOK_NAME=$2

[ -z "$SCRIPT_NAME" ] && echo "no script defined" && exit 1
[ -z "$HOOK_NAME" ] && echo "no hook name defiend" && exit 1

cp "$SCRIPT_NAME" ".git/hooks/$HOOK_NAME"
