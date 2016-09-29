#!/bin/bash

rm -rf app/cache/*

app/console ca:c
app/console ca:c -e=prod
