# PC2 Hermes Tutor Overlay Audit

- timestamp: 20260516-042806
- path: /home/will/workspace/hermes-tutor
- mode: read-only

## Tree
```text
/home/will/workspace/hermes-tutor/bin/hermes-tutor-check
/home/will/workspace/hermes-tutor/bin/hermes-tutor-revive
/home/will/workspace/hermes-tutor/BOOT.md
/home/will/workspace/hermes-tutor/CODEX_TUTOR_PROMPT.md
/home/will/workspace/hermes-tutor/DOKPLOY_DECISION.md
/home/will/workspace/hermes-tutor/env/github.env.example
/home/will/workspace/hermes-tutor/.gitignore
/home/will/workspace/hermes-tutor/GPT55_BOOT_PROMPT.md
/home/will/workspace/hermes-tutor/MEMORY_READSET.md
/home/will/workspace/hermes-tutor/OPENCLAW_BOUNDARY.md
/home/will/workspace/hermes-tutor/prompts/codex-one-shot-template.md
/home/will/workspace/hermes-tutor/prompts/memory-patch-028p.md
/home/will/workspace/hermes-tutor/prompts/next-batch-029c.md
/home/will/workspace/hermes-tutor/prompts/revive-from-github.md
/home/will/workspace/hermes-tutor/RUNTIME_RULES.md
/home/will/workspace/hermes-tutor/SOUL.md
/home/will/workspace/hermes-tutor/TOOL_POLICY.md
```

## Check
```text
PASS file exists: SOUL.md
PASS file exists: BOOT.md
PASS file exists: MEMORY_READSET.md
PASS file exists: TOOL_POLICY.md
PASS file exists: RUNTIME_RULES.md
PASS file exists: CODEX_TUTOR_PROMPT.md
PASS file exists: GPT55_BOOT_PROMPT.md
PASS file exists: OPENCLAW_BOUNDARY.md
PASS file exists: DOKPLOY_DECISION.md
PASS file exists: .gitignore
PASS file exists: prompts/revive-from-github.md
PASS file exists: prompts/next-batch-029c.md
PASS file exists: prompts/memory-patch-028p.md
PASS file exists: prompts/codex-one-shot-template.md
PASS file exists: bin/hermes-tutor-check
PASS file exists: bin/hermes-tutor-revive
PASS file exists: env/github.env.example
PASS gh installed
PASS git installed
PASS codex available
PASS claude available
PASS no GitHub token-like patterns
PASS no real-looking LITELLM_MASTER_KEY assignment
PASS .gitignore protects local env files
PASS LITELLM_MASTER_KEY present in environment
PASS hermes tutor overlay check complete
```

## Revive prompt preview
```text
# GPT 5.5 Hermes Tutor Boot Prompt

Voce e o Hermes Tutor no PC2.

Leia primeiro:

1. `~/workspace/hermes-tutor/SOUL.md`
2. GitHub `main` do repo `https://github.com/zapprosite/homelab-context`
3. Documentos oficiais:
   - `docs/SOUL.md`
   - `docs/HERMES_CURRENT_STATE.md`
   - `docs/HERMES_PC1_CURRENT_STATE.md`
   - `docs/HERMES_PC2_CURRENT_STATE.md`
   - `docs/HERMES_DECISION_LEDGER.md`
   - `docs/HERMES_NEXT_BATCHES.md`
   - `docs/HERMES_CONTEXT_REVIVAL_PROTOCOL.md`

Entregue:

1. estado atual PC1
2. estado atual PC2
3. ultimo batch mergeado
4. proximo batch prioritario
5. riscos proibidos
6. prompt pronto para o proximo batch

Nao invente estado. Se houver lacuna de leitura, declare a lacuna.

Nao execute mutacao no boot. Boot e leitura, sintese e preparacao.
```

## Secret prefix scan
```text
/home/will/workspace/hermes-tutor/env/github.env.example:1:GH_TOKEN=[REDACTED]
/home/will/workspace/hermes-tutor/env/github.env.example:2:LITELLM_MASTER_KEY=[REDACTED]
```

# End

Audit file: /tmp/pc2-hermes-tutor-overlay-audit-20260516-042806.md
