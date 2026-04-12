#!/bin/bash

if [ "$1" = "toggle" ]; then
  makoctl mode -t hide
  exit 0
fi

if makoctl mode | grep -q hide; then
  echo ""
else
  echo ""
fi
