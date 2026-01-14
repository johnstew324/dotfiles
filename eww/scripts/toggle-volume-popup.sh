#!/bin/bash

if eww windows | grep -q "\*volume-popup"; then
    eww close volume-popup
else
    eww open volume-popup
fi