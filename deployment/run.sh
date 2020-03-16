#!/usr/bin/env bash

# Start database
./start-database.sh

# Build Product
./../gradlew buildProduct

# Run
../front/build/output/front/run.sh

