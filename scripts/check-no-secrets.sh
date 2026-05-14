#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$repo_root"

fail=0

echo "checking prohibited filenames and paths"
while IFS= read -r path; do
  case "$path" in
    ./.gitignore|./README.md|./AGENTS.md|./SECURITY.md|./CONNECTOR_README.md|./STATUS.md|./ROADMAP.md|./maps|./maps/*|./registries|./registries/*|./policies|./policies/*|./audits|./audits/*|./scripts|./scripts/*|./notes|./notes/*|./.github|./.github/*|./.github/ISSUE_TEMPLATE|./.github/ISSUE_TEMPLATE/*|./.github/workflows|./.github/workflows/*|./.git|./.git/*)
      ;;
    *)
      echo "unexpected path outside allowlist: $path"
      fail=1
      ;;
  esac
done < <(find . -mindepth 1 -print | sort)

prohibited_name_pattern='(^|/)(auth\.json|credentials\.json|\.credentials\.json|router\.env|stagehand\.env|Cookies|.*\.dat)$|(^|/)(Local Storage|Session Storage|leveldb|blob_storage|GPUCache|DawnGraphiteCache|DawnWebGPUCache|Trust Tokens)(/|$)'
if find . -mindepth 1 -print | rg -n "$prohibited_name_pattern" >/tmp/pc2_state_bad_paths.txt; then
  echo "prohibited file or directory names found:"
  cat /tmp/pc2_state_bad_paths.txt
  fail=1
fi

echo "checking text content for obvious secrets"
content_files=(
  README.md
  AGENTS.md
  SECURITY.md
  CONNECTOR_README.md
  STATUS.md
  ROADMAP.md
  maps/*.md
  registries/*.yaml
  policies/*.md
  audits/*.md
  notes/*.md
)

content_pattern='ghp_|github_pat_|sk-[A-Za-z0-9._-]+|Bearer [A-Za-z0-9._-]+|PRIVATE KEY|OPENAI_API_KEY|ANTHROPIC_API_KEY|LITELLM_MASTER_KEY|password=|token=|secret='
if rg -n "$content_pattern" "${content_files[@]}" >/tmp/pc2_state_bad_content.txt; then
  echo "secret-like content found:"
  cat /tmp/pc2_state_bad_content.txt
  fail=1
fi

if [ "$fail" -ne 0 ]; then
  echo "check-no-secrets: FAIL"
  exit 1
fi

echo "check-no-secrets: PASS"
