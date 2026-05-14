# Tunnel PC1 Map

Serviço:

- `pc1-litellm-tunnel.service`

Contrato local:

- bind local: `127.0.0.1:4018`
- destino remoto esperado: `127.0.0.1:4018` no host `pc1`
- função: expor o LiteLLM do PC1 localmente no PC2

Validação observada:

- serviço ativo
- porta local ouvindo
- `GET /v1/models` sem autorização retorna `401 Unauthorized`

Política:

- preservar o túnel
- não alterar este contrato sem motivo técnico documentado
