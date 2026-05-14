# Latest PC2 Audit

Fonte: `/home/will/workspace/state/audits/pc2-readonly-audit-20260514-133752.md`

Resumo preservando os achados principais:

- host auditado: `will-zappro`
- sistema: Ubuntu 24.04.4 LTS, kernel `6.17.0-23-generic`
- CPU: Ryzen 5 5600X
- GPU: RTX 3060 12GB
- memória: 31 GiB RAM
- swap: `0B`

Componentes principais:

- AI Cockpit ativo em `127.0.0.1:4140`
- túnel `pc1-litellm-tunnel.service` ativo em `127.0.0.1:4018`
- OpenCode Desktop instalado em `/opt/OpenCode`
- OpenCode CLI `1.14.48`
- Codex CLI `0.130.0`
- Claude Code CLI `2.1.139`
- Antigravity instalado
- `gh` instalado sem login

Achados do OpenCode:

- provider preferido observado: `litellm-local`
- endpoint esperado: `http://127.0.0.1:4018/v1`
- modelo esperado observado: `hermes-code`
- histórico adicional de modelos external/free via provider `opencode`

Achados de segurança:

- `claude-code-router.service` ativo em `0.0.0.0:3456`
- status do router indica ausência de autenticação
- múltiplos paths sensíveis existem no host e devem ficar fora do Git
- estados de desktop Electron/Chromium não devem ser copiados

Paths sensíveis de referência:

- `~/.local/share/opencode/auth.json`
- `~/.codex/auth.json`
- `~/.claude/.credentials.json`
- `~/.config/claude-code-router/router.env`
- `~/.config/ai-cockpit/stagehand.env`
- `~/.config/ai.opencode.desktop/*.dat`

Conclusão operacional:

- o contrato principal PC2 -> PC1 via túnel local já existe
- o desktop OpenCode está alinhado ao provider `litellm-local/hermes-code`
- o maior risco atual é a exposição do `claude-code-router`
