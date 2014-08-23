#!/bin/bash

curl -fsSkL https://raw.github.com/cask/cask/master/go | python

~/.cask/bin/cask install
