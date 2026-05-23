# Instruções Para Agentes

## Hermes / Secretaria Brain Guardrail (05/2026)

- Este repo e o brain operacional local do PC2, sanitizado, para Secretaria/Tutor.
- PC1 `homelab-context` continua sendo o brain canonico global.
- O clone PC2 de `homelab-context` e este repo podem propor memoria e registrar estado local; nao sobrescrevem decisoes globais sozinhos.
- Leia `~/workspace/homelab-context/docs/HERMES_SECRETARIA_BRAIN_GUARDRAIL.md` antes de qualquer mudanca Hermes/Secretaria/PC1/PC2.
- Antes de PR/merge/push em trabalho Hermes/Gitea/GitHub, rode `~/workspace/homelab-context/scripts/gitops/gitea-gitops-build.sh`.
- Runtime Hermes deve permanecer fora deste repo: `/home/will/.hermes` hoje; `/home/will/hermes` somente apos migracao explicita.
- Nunca leia nem copie secrets, `.env`, cookies, auth stores, browser dumps ou bancos locais brutos.

Leia [README.md](/home/will/workspace/state/pc2-workstation-state/README.md) primeiro.

- Nunca leia `auth.json`, `.env`, `credentials`, `Cookies` ou arquivos `.dat` brutos.
- Nunca copie `~/.config` bruto para este repositório.
- Não altere serviços sem auditoria nova e registro explícito da mudança.
- Não exponha ferramentas em `0.0.0.0` sem policy aprovada.
- Registre `claude-code-router` como risco até ser isolado.
- Preserve o túnel `pc1-litellm-tunnel.service`.
- Não troque `hermes-code` sem motivo técnico documentado.
- Trate este repositório como estado sanitizado, não como dump de máquina.
