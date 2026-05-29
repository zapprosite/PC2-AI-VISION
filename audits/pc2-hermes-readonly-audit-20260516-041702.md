# PC2 Hermes Read-Only Audit

- timestamp: 20260516-041702
- host: will-zappro
- user: will
- mode: read-only
- workspace: /home/will/workspace
- tutor_overlay: /home/will/workspace/hermes-tutor

## Safety

- no sudo
- no install
- no service restart
- no Docker/Dokploy mutation
- no token print
- no env dump
- no file mutation outside /tmp audit file

## Identity

```text
uid=1000(will) gid=1000(will) grupos=1000(will),4(adm),24(cdrom),27(sudo),30(dip),46(plugdev),100(users),114(lpadmin),984(docker)
 Static hostname: will-zappro
       Icon name: computer-desktop
         Chassis: desktop 🖥️
      Machine ID: a5fed671c2694291b020fc2303c24152
         Boot ID: 574b9d3181554e1b899c14383fac2af2
Operating System: Ubuntu 24.04.4 LTS
          Kernel: Linux 6.17.0-23-generic
    Architecture: x86-64
 Hardware Vendor: ASRock
  Hardware Model: A320M-HD R4.0
Firmware Version: P7.40
   Firmware Date: Thu 2022-10-20
    Firmware Age: 3y 6month 3w 4d
Linux will-zappro 6.17.0-23-generic #23~24.04.1-Ubuntu SMP PREEMPT_DYNAMIC Tue Apr 14 16:11:48 UTC 2 x86_64 x86_64 x86_64 GNU/Linux
2026-05-16T04:17:02-03:00
```

## Disk and workspace

```text
Sist. Arq.     Tipo   Tam. Usado Disp. Uso% Montado em
/dev/nvme0n1p1 btrfs  931G   44G  884G   5% /
/dev/nvme0n1p1 btrfs  931G   44G  884G   5% /

total 300K
drwxr-x--- 1 will will 1014 mai 16 04:17 .
drwxr-xr-x 1 root root    8 mai 11 00:09 ..
drwxrwxr-x 1 will will   38 mai 11 19:31 .antigravity
drwxr-xr-x 1 will will    0 mai 11 00:24 Área de trabalho
-rw-r--r-- 1 will will  722 mai 11 04:16 .bash_aliases
-rw------- 1 will will 5,4K mai 12 11:51 .bash_history
-rw-r--r-- 1 will will  220 mar 31  2024 .bash_logout
-rw-r--r-- 1 will will 4,1K mai 11 21:24 .bashrc
drwx------ 1 will will  842 mai 14 08:37 .cache
drwxrwxr-x 1 will will  452 mai 12 11:28 .claude
drwxrwxr-x 1 will will   90 mai 12 04:24 .claude-code-router
-rw------- 1 will will  29K mai 12 13:01 .claude.json
drwxrwxr-x 1 will will  496 mai 16 04:02 .codex
drwxr-xr-x 1 will will  966 mai 14 13:57 .config
drwx------ 1 will will    6 mai 12 05:19 .copilot
drwxr-xr-x 1 will will  186 mai 16 02:57 Documentos
drwxrwxr-x 1 will will   12 mai 12 12:07 .dotnet
drwxr-xr-x 1 will will   18 mai 14 12:43 Downloads
drwxrwxr-x 1 will will  492 mai 11 21:02 .gemini
-rw-rw-r-- 1 will will  307 mai 14 13:57 .gitconfig
-rw-r--r-- 1 will will  249 mai 11 01:24 .gitignore_global
drwx------ 1 will will   44 mai 13 00:23 .gnupg
drwxr-xr-x 1 will will   32 mai 11 02:12 Imagens
-rw------- 1 will will  225 mai 11 03:28 .lesshst
lrwxrwxrwx 1 will will   54 mai 11 21:21 .lmstudio -> /home/will/workspace/apps/lm-studio/data/lmstudio-home
-rw-rw-r-- 1 will will   20 mai 11 21:23 .lmstudio-home-pointer
drwx------ 1 will will   46 mai 11 19:52 .local
drwxr-xr-x 1 will will    0 mai 11 00:24 Modelos
drwxr-xr-x 1 will will    0 mai 11 00:24 Músicas
drwxrwxr-x 1 will will   92 mai 11 18:59 .npm
-rw------- 1 will will   35 mai 11 02:02 .npmrc
drwx------ 1 will will   24 mai 11 04:34 .nv
drwxrwxr-x 1 will will   88 mai 13 19:30 ops-audits
drwx------ 1 will will   10 mai 11 19:31 .pki
-rw-r--r-- 1 will will 1002 mai 11 21:24 .profile
drwxr-xr-x 1 will will    0 mai 11 00:24 Público
drwxr-xr-x 1 will will   48 mai 12 04:43 scripts
drwx------ 1 will will  110 mai 12 04:52 snap
drwxrwxr-x 1 will will   26 mai 12 13:54 snapshots-governance
drwx------ 1 will will  174 mai 12 12:23 .ssh
drwxrwxr-x 1 will will   58 mai 13 22:10 .streamlit
-rw-r--r-- 1 will will    0 mai 11 00:46 .sudo_as_admin_successful
-rw-r--r-- 1 will will  353 mai 11 01:24 .tmux.conf
drwxrwxr-x 1 will will   56 mai 13 19:46 .venv
drwxr-xr-x 1 will will   16 mai 11 04:38 Vídeos
drwxrwxr-x 1 will will   44 mai 12 05:17 .vscode
drwxrwxr-x 1 will will   26 mai 12 05:17 .vscode-shared
-rw-rw-r-- 1 will will  165 mai 12 11:56 .wget-hsts
drwxrwxr-x 1 will will  172 mai 14 13:39 workspace
-rw-rw-r-- 1 will will  50K mai 11 19:30 .zcompdump
-rw------- 1 will will  95K mai 16 04:17 .zsh_history
-rw------- 1 will will  49K mai 11 19:44 .zsh_history.bak.20260511-194404
-rw-r--r-- 1 will will  761 mai 12 12:29 .zshrc

total 8,0K
drwxrwxr-x 1 will will  172 mai 14 13:39 .
drwxr-x--- 1 will will 1014 mai 16 04:17 ..
-rw-r--r-- 1 will will  600 mai 11 01:24 AGENTS.md
drwxrwxr-x 1 will will   88 mai 13 19:35 apps
drwxr-xr-x 1 will will  228 mai 11 04:10 docs
drwxrwxr-x 1 will will   40 mai 11 22:26 experiments
drwxrwxr-x 1 will will    0 mai 11 00:48 hermes
drwxrwxr-x 1 will will    0 mai 11 01:16 infra
drwxr-xr-x 1 will will   24 mai 11 04:22 pipelines
-rw-r--r-- 1 will will 1,1K mai 11 01:24 README.md
drwxr-xr-x 1 will will  382 mai 12 02:01 scripts
drwxrwxr-x 1 will will    0 mai 11 01:16 skills
drwxrwxr-x 1 will will   54 mai 14 13:49 state
drwxrwxr-x 1 will will    0 mai 11 00:48 video
drwxrwxr-x 1 will will    0 mai 11 01:26 zappro
```

## Core CLI tools

```text
git:
git version 2.43.0

gh:
gh version 2.45.0 (2025-07-18 Ubuntu 2.45.0-1ubuntu0.3)
https://github.com/cli/cli/releases/tag/v2.45.0

codex:
/usr/bin/codex
codex-cli 0.130.0

claude:
/home/will/.local/share/npm/bin/claude
2.1.139 (Claude Code)

node:
v20.20.2

python:
Python 3.12.3

docker:
Docker version 29.4.3, build 055a478

dokploy:
```

## GitHub CLI auth status safe

```text
github.com
  ✓ Logged in to github.com account zapprosite (keyring)
  - Active account: true
  - Git operations protocol: https
  - Token: gho_************************************
  - Token scopes: 'gist', 'read:org', 'repo', 'workflow'
```

## User systemd failed units

```text
  UNIT                                       LOAD   ACTIVE SUB    DESCRIPTION
● org.gnome.SettingsDaemon.MediaKeys.service loaded failed failed GNOME keyboard shortcuts service

Legend: LOAD   → Reflects whether the unit definition was properly loaded.
        ACTIVE → The high-level unit activation state, i.e. generalization of SUB.
        SUB    → The low-level unit activation state, values depend on unit type.

1 loaded units listed.
```

## User systemd Hermes tunnel services

```text
  claude-code-router.service                                       loaded    active   running Claude Code Router local service
  pc1-litellm-tunnel.service                                       loaded    active   running Persistent SSH tunnel to PC1 LiteLLM local proxy

### pc1-litellm-tunnel.service
enabled
active
● pc1-litellm-tunnel.service - Persistent SSH tunnel to PC1 LiteLLM local proxy
     Loaded: loaded (/home/will/.config/systemd/user/pc1-litellm-tunnel.service; enabled; preset: enabled)
     Active: active (running) since Wed 2026-05-13 19:23:19 -03; 2 days ago
   Main PID: 3980680 (ssh)
      Tasks: 1 (limit: 38224)
     Memory: 1.5M (peak: 3.0M)
        CPU: 1.047s
     CGroup: /user.slice/user-1000.slice/user@1000.service/app.slice/pc1-litellm-tunnel.service
             └─3980680 /usr/bin/ssh -N -T -o ExitOnForwardFailure=yes -o ServerAliveInterval=30 -o ServerAliveCountMax=3 -o ConnectTimeout=10 -L 127.0.0.1:4018:127.0.0.1:4018 pc1

mai 13 19:23:19 will-zappro systemd[1413]: Started pc1-litellm-tunnel.service - Persistent SSH tunnel to PC1 LiteLLM local proxy.
```

## Network listeners relevant ports

```text
LISTEN 0      128                     127.0.0.1:4018       0.0.0.0:*    users:([REDACTED_PROCESS])    
```

## PC1 tunnel/local endpoint smoke no token print

```text
## LiteLLM via PC2 localhost /v1/models without auth
curl: (22) The requested URL returned error: 401

## LiteLLM with LITELLM_MASTER_KEY if present
LITELLM_MASTER_KEY not set in this shell
```

## Workspace repos

```text
/home/will/workspace/apps/ai-cockpit
/home/will/workspace/state/pc2-workstation-state
```

## Hermes tutor overlay presence

```text
MISSING /home/will/workspace/hermes-tutor
```

## Existing homelab-context clones on PC2

```text
```

## Secret prefix scan safe workspace shallow

```text
Scanning shallow workspace text for obvious token prefixes, excluding .git/node_modules/cache/logs...
/home/will/workspace/apps/ai-cockpit/config/router.env.example:1:OPENAI_API_KEY=[REDACTED]
/home/will/workspace/apps/ai-cockpit/config/router.env.example:2:OPENROUTER_API_KEY=[REDACTED]
/home/will/workspace/apps/browser-agents/config/stagehand.env.example:6:OPENAI_API_KEY=[REDACTED]
/home/will/workspace/state/pc2-workstation-state/scripts/audit-readonly.sh:11:    -e 's/(ghp_[A-Za-z0-9_]+)/[REDACTED-GH-TOKEN]/g' \
/home/will/workspace/state/pc2-workstation-state/scripts/audit-readonly.sh:12:    -e 's/(github_pat_[A-Za-z0-9_]+)/[REDACTED-GH-PAT]/g' \
/home/will/workspace/state/pc2-workstation-state/scripts/check-no-secrets.sh:43:content_pattern='ghp_|github_pat_|sk-[A-Za-z0-9._-]+|Bearer [A-Za-z0-9._-]+|PRIVATE KEY|OPENAI_API_KEY|ANTHROPIC_API_KEY|LITELLM_MASTER_KEY|password=|token=|secret='
```

# End

Audit file:
/tmp/pc2-hermes-readonly-audit-20260516-041702.md
