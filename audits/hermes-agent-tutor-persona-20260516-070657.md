# Hermes Agent Tutor Persona Audit

Timestamp: 20260516-070657

Host:
- pwd: `/home/will`
- hostname: `will-zappro`
- user: `will`

Files created:
- `/home/will/.hermes/skills/hermes-tutor-will/SKILL.md`
- `/home/will/workspace/hermes-tutor/HERMES_AGENT_INTEGRATION.md`
- `/home/will/workspace/hermes-tutor/prompts/hermes-agent-tutor-boot.md`
- `/home/will/workspace/hermes-tutor/prompts/hermes-agent-029c.md`
- `/home/will/workspace/hermes-tutor/prompts/hermes-agent-memory-patch.md`
- `/home/will/workspace/hermes-tutor/bin/hermes-agent-tutor-check`

Files altered:
- `/home/will/.zshrc`
- `/home/will/.bashrc`
- `/home/will/workspace/hermes-tutor/env/github.env`
- `/home/will/workspace/hermes-tutor/env/*.env*` permissions hardened to `600`

Checks:
- Hermes command available at `/home/will/.local/bin/hermes`.
- `openai-codex` auth status: logged in.
- Hermes config path: `/home/will/.hermes/config.yaml`.
- Hermes env path: `/home/will/.hermes/.env`.
- Local skill `hermes-tutor-will` listed and enabled.
- `gh`, `codex`, and `claude` available.
- `~/workspace/homelab-context` exists.
- `~/workspace/hermes-tutor` exists.
- LiteLLM curl skipped because `LITELLM_MASTER_KEY` was not set in this shell.
- Secret scan against local tutor files passed.
- Pre-existing secret-like values in local overlay env files were redacted to placeholders.

Smoke tests:
- `hermes -s hermes-tutor-will -z 'Responda exatamente: HERMES_TUTOR_SKILL_OK'`: PASS.
- `hermes -m cheap -s hermes-tutor-will -z 'Responda exatamente: QWEN_TUTOR_SKILL_OK'`: PASS.
- `hermes -z 'Responda exatamente: GPT55_TUTOR_OK'`: PASS.

Decisions:
- Upstream Hermes Agent docs were not edited.
- Bundled Hermes Agent skills were not edited.
- Hermes Agent `AGENTS.md` was not edited.
- Customization was implemented through local skill, local overlay docs, local prompts, shell aliases, and a local check script.
- No push, merge, service restart, sudo, Docker, Dokploy, port exposure, or PC1 modification was performed.
- Existing overlay env files were treated as local-only and sanitized instead of copied into audit or prompts.

Zero secrets:
- No token or secret value was copied into created markdown, prompts, audit, config, or skill files.
- Audit contains only sanitized operational state.

Next steps:
- Run `029C — Repo Factory Renderer Dry Run` under gate.
