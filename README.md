# PC2 Workstation State

Este repositório local descreve o estado sanitizado do PC2, a workstation/cockpit do ambiente Zappro/Hermes.

Ele existe para documentar componentes, portas, serviços, paths, riscos e decisões operacionais do PC2. Não é backup. Não contém `secrets`, `auth.json`, `.env`, `.dat`, `Cookies`, `Local Storage`, `Session Storage` nem cópias brutas de `~/.config`.

Nome-alvo de publicação: `zapprosite/PC2-AI-VISION`.

O PC2 consome o PC1 por meio do túnel local `http://127.0.0.1:4018/v1`. O OpenCode Desktop deve usar `litellm-local` com o modelo esperado `hermes-code`. O AI Cockpit roda em `127.0.0.1:4140`.

Use este repositório como mapa operacional e base para um futuro repositório publicado do PC2. Qualquer mudança em serviços, exposição de portas ou troca de modelo deve ser precedida por auditoria nova.

Para política de snapshots e backups, ver [snapshots-backups.md](/home/will/workspace/state/pc2-workstation-state/policies/snapshots-backups.md).

## GitHub Ops

- `state-guard` valida commits e PRs
- o PR template força checklist operacional e de segurança
- issue templates organizam audit, risk, change e smoke
- não existe deploy automático
- não existe runner local

O diretório `gpt-web/` funciona como memória explícita para ChatGPT Web dentro deste state repo.
