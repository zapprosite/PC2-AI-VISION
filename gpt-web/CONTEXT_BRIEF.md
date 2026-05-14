# PC2 GPT Web Context Brief

PC2 e a workstation/cockpit do ambiente.

Referencias operacionais principais:

- AI Cockpit: `127.0.0.1:4140`
- tunel PC1 LiteLLM: `127.0.0.1:4018`
- OpenCode Desktop esperado: `litellm-local/hermes-code`

Risco alto atual:

- `claude-code-router` em `0.0.0.0:3456` sem auth

Estado do repositório:

- GitHub Ops-lite ja aplicado
- este repo nao e backup
- este repo nao contem secrets

Proximos passos:

- aplicar equivalente no PC1
- criar `hermes-brain`
- harden `claude-code-router`
