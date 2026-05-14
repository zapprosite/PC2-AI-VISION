# OpenCode Desktop Map

Inventário sanitizado:

- desktop file: `/usr/share/applications/@opencode-aidesktop.desktop`
- app dir: `/opt/OpenCode`
- config dir observada: `~/.config/ai.opencode.desktop`

Estado esperado:

- provider preferido: `litellm-local`
- modelo esperado: `hermes-code`
- endpoint: `http://127.0.0.1:4018/v1`

Achados da auditoria:

- há evidência de `litellm-local/hermes-code`
- há histórico de sessões com provider `opencode` e modelos externos/free

Nunca incluir neste repositório:

- `Cookies`
- `Local Storage`
- `Session Storage`
- `leveldb`
- `*.dat`
- bancos locais e caches do desktop
