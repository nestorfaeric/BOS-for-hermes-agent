# BOS for Hermes Agent

Adaptation de [yomidenzel/BOS](https://github.com/yomidenzel/BOS) pour créer un profil [Hermes Agent](https://github.com/NousResearch/hermes-agent) dédié : un COO business IA conversationnel, proactif, avec mémoire business en fichiers Markdown et skills spécialisés.

## Objectif

Transformer BOS en profil Hermes indépendant, utilisable en CLI ou via Telegram, sans dépendre de Cursor/Claude.

## Structure adaptée

```text
BOS-for-hermes-agent/
├── SOUL.md                         # identité BOS adaptée à Hermes
├── HERMES_ADAPTATION_PLAN.md       # plan d'installation/test/polish
├── hermes-profile-template/        # fichiers à copier dans ~/.hermes/profiles/bos/
│   ├── SOUL.md
│   ├── config.yaml.sample
│   ├── skills/business-operating-system/
│   │   ├── bos-onboard/
│   │   ├── bos-diagnosis/
│   │   ├── bos-organize/
│   │   ├── bos-traffic/
│   │   ├── bos-offer/
│   │   ├── bos-funnel/
│   │   ├── bos-mindset/
│   │   ├── bos-find/
│   │   ├── bos-chase/
│   │   └── bos-digestion/
│   └── workspace/BOS/
│       ├── Core/
│       ├── Knowledge/
│       └── Output/
├── .claude/                        # version originale conservée
├── Core/                           # version originale BOS
├── Knowledge/                      # version originale BOS
└── Output/
```

## Installation proposée

```bash
hermes profile create bos
cp -R hermes-profile-template/* ~/.hermes/profiles/bos/
cp ~/.hermes/profiles/bos/config.yaml.sample ~/.hermes/profiles/bos/config.yaml
hermes --profile bos chat
```

Ou via le script fourni :

```bash
./install-hermes-profile.sh bos
hermes --profile bos chat
```

Optionnel : configurer une gateway Telegram dédiée.

```bash
hermes --profile bos gateway setup
hermes --profile bos gateway install
hermes --profile bos gateway start
```

## Principe de fonctionnement

- `SOUL.md` porte l'identité et les règles centrales du profil Hermes.
- `workspace/BOS/Core/` est la mémoire business vivante : profil, business, objectif, diagnostic, actions, journal.
- `workspace/BOS/Knowledge/` contient la base de reconnaissance de patterns.
- `workspace/BOS/Output/` reçoit les livrables datés.
- Les skills `bos-*` routent l'action : onboarding, diagnostic, offre, trafic, funnel, mindset, scale, opérations.

## Crédit

Fork/adaptation de BOS par Yomi Denzel : https://github.com/yomidenzel/BOS

Licence originale : MIT.
