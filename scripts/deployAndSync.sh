#!/usr/bin/env bash
set -x
set -euo pipefail

terraform plan -out=tfplan

terraform apply tfplan

aws s3 sync . s3://trevornance.dev \
  --profile trevor-prod \
  --exclude "terraform/*" \
  --exclude ".git/*" \
  --exclude ".DS_Store"
