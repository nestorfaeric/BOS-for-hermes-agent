# BOS — Business Operating System

**Transforme Claude en COO personnel.**

BOS est un système d'exploitation business propulsé par l'IA pour les entrepreneurs. Clone ce repo, ouvre-le dans Cursor, et obtiens un associé business qui connaît ton business, identifie tes blocages, et te guide vers ton prochain palier — chaque jour.

## Ce que BOS fait

- **Première fois :** BOS te pose des questions pour comprendre ton business, diagnostique tes problèmes principaux, et t'aide immédiatement à passer à l'action.
- **À chaque retour :** Reviens et parle. BOS se souvient de tout, se met à jour sur ce qui s'est passé, et propose la tâche au plus grand levier. C'est juste une conversation avec un associé business qui connaît ta situation.

### 10 skills spécialisés

BOS n'est pas un assistant générique — c'est une équipe de spécialistes, chacun avec sa propre méthodologie :

| Skill | Ce qu'il fait |
|-------|---------------|
| **Onboard** | Premier setup : profil, diagnostic, premier quick win |
| **Find** | Choisir le bon business / valider / décider de pivoter |
| **Diagnosis** | Trouver LE bottleneck qui bloque tout le reste |
| **Organize** | Structurer le plan d'action (début de semaine, post-diagnostic, quand perdu) |
| **Traffic** | Choisir et mettre en place UN canal d'acquisition |
| **Offer** | Construire une offre irrésistible (Grand Slam Offer) |
| **Funnel** | Diagnostiquer et réparer la conversion |
| **Mindset** | Quand l'entrepreneur EST le blocage (peur, croyances, discipline) |
| **Chase** | Accélérer le revenue (leviers de croissance, pricing, partenariats) |
| **Digestion** | Réparer les opérations (recrutement, process, qualité, rétention) |

Tu n'as jamais besoin d'« activer » un skill. Parle — BOS détecte ce dont tu as besoin et applique le bon spécialiste.

## Pour qui

- Entrepreneurs qui veulent lancer mais ne savent pas par où commencer
- Petits business (0–10k€/mois) qui veulent grandir
- Fondateurs solo qui ont besoin d'un associé de réflexion, pas d'une énième formation

## Comment ça marche

BOS vit dans ton workspace Cursor sous forme de fichiers markdown + 10 skills IA spécialisés :

```
BOS/
├── CLAUDE.md              ← Le cerveau (principes, routing, frameworks)
├── Core/                  ← État vivant de TON business
│   ├── Profile.md         ← Toi (background, compétences, temps, motivation)
│   ├── Business.md        ← Ton business (offre, clients, métriques, équipe)
│   ├── Goal.md            ← Où tu vas (objectif, timeline, pourquoi)
│   ├── Diagnosis.md       ← Tes problèmes principaux, classés par impact
│   ├── Actions.md         ← Ce qu'il faut faire, priorisé
│   └── Journal.md         ← Log quotidien des avancées
├── Knowledge/             ← Reconnaissance de patterns
│   ├── Common_Problems.md ← 30 problèmes entrepreneurs les plus fréquents
│   └── Yomi_Business_Principles.md ← Principes business (source de vérité)
├── .claude/skills/        ← 10 skills spécialisés
│   ├── onboard/           ← Premier setup (~15 min)
│   ├── find/              ← Choisir le bon business / valider / pivoter
│   ├── diagnosis/         ← Diagnostic profond du business
│   ├── organize/          ← Structurer le plan d'action
│   ├── traffic/           ← Stratégie d'acquisition (1 canal)
│   ├── offer/             ← Construire l'offre irrésistible
│   ├── funnel/            ← Diagnostiquer et réparer la conversion
│   ├── mindset/           ← Débloquer les freins psychologiques
│   ├── chase/             ← Accélérer le revenue (Scale)
│   └── digestion/         ← Réparer les opérations (Scale)
└── Output/                ← Rapports et livrables générés
```

## Démarrage rapide

### 1. Installer Cursor
Télécharge [Cursor](https://cursor.sh) si tu ne l'as pas encore.

### 2. Cloner ce repo
```bash
git clone https://github.com/yomidenzel/BOS.git
cd BOS
```

### 3. Ouvrir dans Cursor
```bash
cursor .
```

### 4. Parler
Ouvre une nouvelle conversation IA dans Cursor et dis n'importe quoi. BOS prend les rênes.

## Ce qui rend BOS différent

| | ChatGPT | Coach Business | BOS |
|---|---------|----------------|-----|
| Connaît ton business | Non | Oui | Oui |
| Disponible 24/7 | Oui | Non | Oui |
| Donne des actions spécifiques | Parfois | Oui | Oui |
| Suit tes progrès | Non | Hebdo | Quotidien |
| S'adapte à ta situation | Générique | Oui | Oui |
| Coût | 20€/mois | 500€+/session | Abonnement Cursor |

## La philosophie

La plupart des entrepreneurs n'échouent pas à cause de mauvaises idées. Ils échouent à cause d'une mauvaise exécution — ils ne savent pas sur quoi se concentrer, ils ont peur de faire ce qu'ils doivent faire, ou ils ne le font tout simplement pas.

BOS attaque les trois :
1. **Stratégie :** Diagnostique ton bottleneck #1 et prescrit l'action au plus grand levier. Refuse de te laisser travailler sur le mauvais problème.
2. **Mindset :** Détecte quand le vrai blocage est la peur, les croyances, ou les mauvaises habitudes — et l'adresse directement. Les problèmes comportementaux sont traités comme des problèmes business.
3. **Exécution :** Ne se contente pas de conseiller — il FAIT le travail. Écrit le copy, structure les offres, planifie les funnels, rédige les emails, crée les fiches de poste, construit les calendriers de contenu. Tu décides, BOS livre.

Chaque skill a des **garde-fous** — des choses qu'il refusera activement de faire. BOS ne te laissera pas scaler sans product-market fit, recruter sans scorecard, construire un produit sans preuve client, ou planifier du contenu sans connaître ton audience. Le système est opinionated parce que les conseils génériques ne marchent pas.

## Créé par

[Yomi Denzel](https://youtube.com/@YomiDenzel) — Entrepreneur, YouTuber, et constructeur de systèmes d'exploitation pour tout.

## Licence

MIT — Utilise-le, fork-le, améliore-le, partage-le.
