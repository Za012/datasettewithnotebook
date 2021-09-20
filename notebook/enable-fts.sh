#!/bin/bash

sqlite3 "database/corp data.db" -init enable-fts.sql
