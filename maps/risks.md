# Risks Map

Riscos atuais observados:

- `claude-code-router` exposto em `0.0.0.0:3456` sem autenticação
- OpenCode Desktop com histórico de modelos externos, fora do padrão preferido
- múltiplos paths sensíveis em `~/.config` e `~/.local/share`
- `swap` em `0B`

Riscos de publicação:

- inclusão acidental de `auth.json`, `.env`, `.dat`, cookies ou estados locais
- cópia de configs brutas de Electron/Chromium

Mitigação:

- `.gitignore` agressivo
- script de varredura de segredos
- documentação orientada por whitelist
