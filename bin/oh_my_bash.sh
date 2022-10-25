#!/bin/bash

# oh-my-bash setup

function __omb__repository() {
	bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
}

function __oh_my_bash__() {
	__omb__repository;
}