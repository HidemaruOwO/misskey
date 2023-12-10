#!/usr/bin/env bash
sudo systemctl start redis
sudo systemctl start postgresql
pnpm run clean
pnpm run build
pnpm run start
sudo systemctl stop redis
sudo systemctl stop postgresql
