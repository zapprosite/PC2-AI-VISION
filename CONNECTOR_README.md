# Connector README

PC2 atua como workstation/cockpit local. O conector operacional principal hoje é o túnel para o LiteLLM do PC1:

- endpoint local esperado: `http://127.0.0.1:4018/v1`
- serviço associado: `pc1-litellm-tunnel.service`
- consumidor preferencial: OpenCode Desktop e OpenCode CLI
- modelo esperado: `hermes-code`

Estado esperado do desktop:

- provider preferido: `litellm-local`
- modelo preferido: `hermes-code`
- histórico com providers externos pode existir no desktop, mas não é o padrão desejado

Este repositório documenta a topologia e os contratos locais, sem copiar credenciais nem estado de sessão.

Para a relação entre audit, Git, snapshots e backup de arquivo, ver [snapshots-backups.md](/home/will/workspace/state/pc2-workstation-state/policies/snapshots-backups.md).

Leitura recomendada adicional:

- [github-ops.md](/home/will/workspace/state/pc2-workstation-state/policies/github-ops.md)
- [state-guard.yml](/home/will/workspace/state/pc2-workstation-state/.github/workflows/state-guard.yml)
- [pull_request_template.md](/home/will/workspace/state/pc2-workstation-state/.github/pull_request_template.md)

## Memória GPT Web

Ordem de leitura recomendada:

1. [CONTEXT_BRIEF.md](/home/will/workspace/state/pc2-workstation-state/gpt-web/CONTEXT_BRIEF.md)
2. [NEXT_ACTIONS.md](/home/will/workspace/state/pc2-workstation-state/gpt-web/NEXT_ACTIONS.md)
3. [DECISIONS.md](/home/will/workspace/state/pc2-workstation-state/gpt-web/DECISIONS.md)
4. [SESSION_LEDGER.md](/home/will/workspace/state/pc2-workstation-state/gpt-web/SESSION_LEDGER.md)
