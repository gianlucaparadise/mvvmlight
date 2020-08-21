#!/bin/bash

# This script publishes the nupkg artifact

if [[ -z $NUGET_APIKEY ]]; then
    echo 'Missing Nuget ApiKey: you need to set the $NUGET_APIKEY env variable'
    exit 6
fi

nuget setApiKey -Verbosity quiet "$NUGET_APIKEY"
nuget push GalaSoft.MvvmLight/GP.MvvmLightAndroidX*.nupkg -Source https://api.nuget.org/v3/index.json