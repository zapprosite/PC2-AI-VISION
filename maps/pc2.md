# PC2 Map

PC2 é a workstation/cockpit do ambiente Zappro/Hermes.

Resumo operacional:

- host: `will-zappro`
- sistema: Ubuntu 24.04.4 LTS
- CPU: Ryzen 5 5600X
- GPU: RTX 3060 12GB
- papel: consumir modelos locais remotos do PC1 via túnel, operar ferramentas de desenvolvimento assistido e servir cockpit local

Componentes centrais:

- AI Cockpit
- OpenCode Desktop
- OpenCode CLI
- Codex CLI
- Claude Code CLI
- Antigravity
- túnel `pc1-litellm-tunnel`

Fronteira de segurança:

- este repositório guarda somente descrição sanitizada
- estado bruto de aplicações desktop fica fora do Git
