#!/bin/bash
set -e

echo "Token for Grafana:"
influx auth create -d "Grafana data consumer" --read-buckets

echo "Token for Enviro:"
influx auth create -d "Enviro data source" --write-buckets
