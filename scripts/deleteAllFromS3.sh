#!/usr/bin/env bash
set -x
set -euo pipefail

aws s3 rm s3://trevornance.dev --recursive --profile trevor-prod
