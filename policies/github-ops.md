# GitHub Ops

GitHub neste repositório é GitOps-lite e documentação. Nao e deploy.

Este repositório nao controla serviços do PC2.

Nao deve ter self-hosted runner agora.

Nao deve ter secrets.

GitHub Actions neste repositório devem validar apenas:

- documentação
- paths rastreados
- YAML
- ausência de secrets

A branch `main` deve receber apenas conteúdo sanitizado.

O repositório público é provisório. Pode voltar para privado após estabilização, se desejado.

Risco alto atual:

- `claude-code-router` em `0.0.0.0:3456` sem auth deve ser tratado como issue/risk
- esse risco nao e corrigido pelo workflow
