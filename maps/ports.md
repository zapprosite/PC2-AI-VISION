# Ports Map

Portas observadas na auditoria:

- `127.0.0.1:4140` AI Cockpit
- `127.0.0.1:4018` SSH tunnel PC1 LiteLLM
- `0.0.0.0:3456` Claude Code Router, risco alto

Leitura operacional:

- `4140` é porta local de cockpit
- `4018` é a interface local do túnel para o LiteLLM do PC1
- `3456` está exposta para todas as interfaces e deve ser tratada como risco até hardening
