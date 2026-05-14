# Snapshots And Backups Policy

Snapshot local nao e backup.

Git nao e backup de disco.

Audit em Markdown nao e rollback.

Smoke test e prova funcional.

O PC2 pode nao ter Btrfs ou Snapper. Auditar antes de assumir snapshot real do host.

Se nao houver Snapper, a estrategia minima recomendada e:

- backup de arquivo
- Git para estado sanitizado
- audit para registro operacional

Configs criticas a tratar com cuidado:

- `pc1-litellm-tunnel.service`
- `~/.ssh/config`
- OpenCode Desktop
- AI Cockpit
- configs sanitizadas de Claude
- configs sanitizadas de Codex

Nunca versionar:

- `auth.json`
- `.env`
- `credentials`
- `.dat`
- `Cookies`
- `Local Storage`
