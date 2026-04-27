# BOS for Hermes Agent — Adaptation Plan

> **For Hermes:** this repo is a fork/adaptation of `yomidenzel/BOS` for use as a dedicated Hermes profile.

**Goal:** Turn BOS into a reusable Hermes Agent profile that behaves like a proactive COO business IA.

**Architecture:** The original BOS markdown operating system is preserved, while Hermes-specific profile assets live under `hermes-profile-template/`. `SOUL.md` defines the agent identity, `workspace/BOS/Core/` stores live business state, and converted Hermes skills live in `skills/business-operating-system/`.

**Tech Stack:** Hermes Agent profiles, Markdown, Hermes skills, file tools (`read_file`, `write_file`, `patch`, `search_files`), optional Telegram gateway.

---

## Current adaptation status

- [x] Fork renamed to `BOS-for-hermes-agent`
- [x] Root `SOUL.md` generated from the original `CLAUDE.md`
- [x] `hermes-profile-template/SOUL.md` created
- [x] Original `Core/`, `Knowledge/`, `Output/` copied into `hermes-profile-template/workspace/BOS/`
- [x] 10 Claude skills converted into Hermes skills with YAML frontmatter
- [x] `config.yaml.sample` added for a dedicated `bos` profile

## Proposed install flow

```bash
./install-hermes-profile.sh bos
```

Ou manuellement :

```bash
hermes profile create bos
cp -R hermes-profile-template/* ~/.hermes/profiles/bos/
hermes --profile bos chat
```

Optional Telegram gateway:

```bash
hermes --profile bos gateway setup
hermes --profile bos gateway install
hermes --profile bos gateway start
```

## Task 1: Validate skill discovery

**Objective:** Ensure Hermes can index the converted BOS skills.

**Files:**
- `hermes-profile-template/skills/business-operating-system/*/SKILL.md`

**Verify:**

```bash
HERMES_HOME=/tmp/bos-hermes-test hermes skills list
```

Expected: the `bos-*` skills appear under `business-operating-system`.

## Task 2: Test onboarding flow

**Objective:** Confirm a fresh BOS profile detects empty Core files and starts onboarding naturally.

**Steps:**
1. Create a temporary Hermes profile/home.
2. Copy `hermes-profile-template/*`.
3. Start `hermes chat`.
4. Send: “Salut”.

Expected: BOS introduces itself briefly and asks the first onboarding questions without mentioning internal routing.

## Task 3: Test returning-user flow

**Objective:** Confirm BOS reads populated Core files and recommends the next high-leverage action.

**Steps:**
1. Fill `workspace/BOS/Core/Profile.md`, `Business.md`, `Goal.md`, `Diagnosis.md`, `Actions.md`.
2. Start a new chat.
3. Send: “go”.

Expected: BOS summarizes the current bottleneck and proposes one concrete next action.

## Task 4: Polish Telegram profile

**Objective:** Make BOS available as a separate Telegram agent without polluting Nestor/Vulcain/Wolfy.

**Steps:**
1. Create a dedicated Telegram bot token.
2. Add secrets to `~/.hermes/profiles/bos/.env`.
3. Install a user systemd gateway service for the profile.
4. Add startup notification if desired.

## Notes

- `workspace/BOS/Core/` remains the source of truth for the business state.
- Hermes persistent memory should store only durable preferences/infra facts, not detailed business state.
- The original `.claude/` folder is intentionally preserved for upstream traceability.
- Converted skills are namespaced as `bos-*` to avoid collisions with generic Hermes skills.
