#!/bin/bash

echo "Clean previous assets"
rm -rf app/cache/*
rm -rf web/bundles/*
rm -rf web/css/*
rm -rf web/js/*

echo "Initialize assets"
app/console ca:c
app/console ca:c -e=prod

app/console pim:in:ass
app/console asset:install --symlink
