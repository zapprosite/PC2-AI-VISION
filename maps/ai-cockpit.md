# AI Cockpit Map

Inventário sanitizado:

- app: `~/workspace/apps/ai-cockpit/app.py`
- service user: `~/.config/systemd/user/ai-cockpit.service`
- unit source no app: `~/workspace/apps/ai-cockpit/config/ai-cockpit.service`
- desktop: `~/.local/share/applications/ai-cockpit.desktop`

Estado atual:

- ativo em `127.0.0.1:4140`
- executado com `python3`
- papel: launcher/status dashboard de ferramentas AI locais

Restrições:

- não alterar o serviço a partir deste repositório sem nova auditoria
- não copiar env real nem configs brutas do cockpit
