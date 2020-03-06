#!/usr/bin/env bash

psql -h 0.0.0.0 -p 5432 -U postgres -d cs_courses -f dump.sql
