# Instruções Para Agentes

Leia [README.md](/home/will/workspace/state/pc2-workstation-state/README.md) primeiro.

- Nunca leia `auth.json`, `.env`, `credentials`, `Cookies` ou arquivos `.dat` brutos.
- Nunca copie `~/.config` bruto para este repositório.
- Não altere serviços sem auditoria nova e registro explícito da mudança.
- Não exponha ferramentas em `0.0.0.0` sem policy aprovada.
- Registre `claude-code-router` como risco até ser isolado.
- Preserve o túnel `pc1-litellm-tunnel.service`.
- Não troque `hermes-code` sem motivo técnico documentado.
- Trate este repositório como estado sanitizado, não como dump de máquina.
