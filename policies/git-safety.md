# Git Safety Policy

Regras:

- versionar apenas documentação, mapas, registries e scripts sanitizados
- nunca adicionar diretórios brutos de config
- rodar `./scripts/check-no-secrets.sh` antes de commit
- revisar `git status --short` antes de cada commit
- não publicar este repositório sem revisão manual final
