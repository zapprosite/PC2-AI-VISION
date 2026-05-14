# Security

Este repositório proíbe credenciais, estados Electron/Chromium, caches locais e artefatos de sessão.

Não incluir:

- `~/.local/share/opencode/auth.json`
- `~/.codex/auth.json`
- `~/.claude/.credentials.json`
- `~/.config/claude-code-router/router.env`
- `~/.config/ai-cockpit/stagehand.env`
- `~/.config/ai.opencode.desktop/Cookies`
- `~/.config/ai.opencode.desktop/Local Storage`
- `~/.config/ai.opencode.desktop/Session Storage`
- `~/.config/ai.opencode.desktop/*.dat`

Também ficam proibidos:

- qualquer `auth.json`, `credentials.json`, `.credentials.json`
- qualquer `.env` ou `*.env`
- `Cookies`, `Local Storage`, `Session Storage`, `leveldb`, `blob_storage`
- bancos locais, caches GPU, `Trust Tokens`, históricos de sessão e dumps de desktop state

Se um artefato não puder ser publicado com segurança em um repositório público, ele não pertence aqui.
