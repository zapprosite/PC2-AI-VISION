# Desktop State Policy

Aplicações Electron ou Chromium acumulam estado local que não deve entrar no repositório:

- `Cookies`
- `Local Storage`
- `Session Storage`
- `leveldb`
- `blob_storage`
- caches GPU
- `Trust Tokens`
- arquivos `.dat`

Para desktop apps, registrar apenas:

- path do app
- desktop file
- versão quando disponível
- provider/modelo esperado
- riscos observados
