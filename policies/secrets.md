# Secrets Policy

Este repositório usa whitelist. Tudo que não for explicitamente sanitizado deve ficar fora.

Proibido incluir:

- tokens
- chaves de API
- credenciais
- `auth.json`
- `credentials.json`
- `.credentials.json`
- `.env`
- headers Authorization
- dumps de sessão

Fontes típicas proibidas:

- `~/.local/share/opencode`
- `~/.codex`
- `~/.claude`
- `~/.config/claude-code-router`
- `~/.config/ai-cockpit`
- `~/.config/ai.opencode.desktop`
