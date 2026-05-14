#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
audit_dir="$repo_root/audits"
timestamp="$(date +%Y%m%d-%H%M%S)"
outfile="$audit_dir/generated-$timestamp.md"

mask_stream() {
  sed -E \
    -e 's/(ghp_[A-Za-z0-9_]+)/[REDACTED-GH-TOKEN]/g' \
    -e 's/(github_pat_[A-Za-z0-9_]+)/[REDACTED-GH-PAT]/g' \
    -e 's/(sk-[A-Za-z0-9._-]+)/[REDACTED-API-KEY]/g' \
    -e 's/(Bearer )[A-Za-z0-9._-]+/\1[REDACTED]/g' \
    -e 's/((OPENAI|ANTHROPIC|LITELLM)_[A-Z_]*=).*/\1[REDACTED]/g'
}

{
  printf '# Generated PC2 Readonly Audit\n\n'
  printf 'Generated at: `%s`\n\n' "$(date --iso-8601=seconds)"

  printf '## System\n\n```text\n'
  hostnamectl 2>/dev/null | sed -n '1,12p'
  printf '```\n\n```text\n'
  uname -a
  printf '```\n\n'

  printf '## Services\n\n```text\n'
  systemctl --user list-units --type=service --all | rg 'ai-cockpit|pc1-litellm-tunnel|claude-code-router' || true
  printf '```\n\n'

  printf '## Ports\n\n```text\n'
  ss -ltnp | rg ':4140|:4018|:3456' || true
  printf '```\n\n'

  printf '## Tool Versions\n\n```text\n'
  if command -v opencode >/dev/null 2>&1; then
    printf 'OpenCode CLI: '
    opencode --version
  fi
  if command -v codex >/dev/null 2>&1; then
    printf 'Codex CLI: '
    codex --version
  fi
  if command -v claude >/dev/null 2>&1; then
    printf 'Claude Code CLI: '
    claude --version
  fi
  if command -v gh >/dev/null 2>&1; then
    printf 'GitHub CLI: '
    gh --version | sed -n '1p'
  fi
  printf '```\n\n'

  printf '## Paths\n\n```text\n'
  printf 'AI Cockpit app: %s\n' '/home/will/workspace/apps/ai-cockpit/app.py'
  printf 'OpenCode Desktop dir: %s\n' '/opt/OpenCode'
  printf 'Tunnel service: %s\n' '/home/will/.config/systemd/user/pc1-litellm-tunnel.service'
  printf '```\n\n'

  printf '## Probe\n\n```text\n'
  curl -sS -D - --max-time 5 http://127.0.0.1:4018/v1/models -o /tmp/pc2-state-repo-probe.out 2>/dev/null | sed -n '1,6p'
  sed -n '1,2p' /tmp/pc2-state-repo-probe.out 2>/dev/null
  printf '```\n'
} | mask_stream > "$outfile"

printf 'generated %s\n' "$outfile"
