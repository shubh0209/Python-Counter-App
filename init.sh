#!/bin/bash
docker build -t shubh228/flask-app:$(git rev-parse HEAD) .
