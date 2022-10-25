#!/bin/bash

# git setup

function __git_autocompletion() {
	mkdir -p ~/utils;
	cp -r ./utils ~/;
}

function __git__() {
	__git_autocompletion;
}