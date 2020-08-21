#!/bin/bash

# This script creates and publish the nupkg artifact

set -e # This will make the script stop if an error happens

sh utility_scripts/build-androidx.sh

sh utility_scripts/deploy-androidx.sh