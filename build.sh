#!/usr/bin/env bash
set -euo pipefail

# 用 Vercel 的生产域名作为 baseURL，避免资源/链接指到 localhost
hugo --gc --minify --baseURL "https://${VERCEL_PROJECT_PRODUCTION_URL}"
