#!/bin/bash

# oh-my-bash setup

function __omb__repository() {
	git clone https://github.com/ohmybash/oh-my-bash.git ~/.oh-my-bash;
}

function __oh_my_bash__() {
	__omb__repository;
}