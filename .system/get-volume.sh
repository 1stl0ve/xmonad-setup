#!/usr/bin/env bash

STATUS=$(amixer get Master | grep -Po "\[o.+\]" | grep -Po "[a-z]+")
if [[ "$STATUS" == "off" ]]
then
    echo "Muted"
else
    amixer get Master | grep -Po "\[\d+%\]" | grep -Po "\d+"
fi
