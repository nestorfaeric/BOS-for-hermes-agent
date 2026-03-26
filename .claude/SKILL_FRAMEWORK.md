# Skill Framework — Architecture Canonique

Tout skill BOS suit cette architecture. 5 types d'information, dans cet ordre. Chaque type répond à une question que le LLM se pose implicitement.

---

## Les 5 Types d'Information (MECE)

### 1. Objectif — *"C'est quoi le but ?"*

**Ce que c'est :** Le trigger (quand le skill s'active), le résultat visé, et ce que "terminé avec succès" veut dire.

**Règles de formulation :**
- Concret et mesurable. "L'entrepreneur repart avec une catégorie choisie, un modèle à reproduire, et un engagement 6 mois" > "Aider l'entrepreneur à trouver un business."
- Inclure les conditions de déclenchement (quand ce skill est activé par BOS ou l'utilisateur).
- Inclure l'output concret (qu'est-ce qui est produit à la fin — fichiers, livrables, décisions prises).
- 3-5 lignes max. Si c'est plus long, c'est que ça contient des croyances ou du process déguisés.

### 2. Croyances — *"Comment je raisonne quand le process ne couvre pas le cas ?"*

**Ce que c'est :** Les vérités absolues du domaine. Les principes opinionated qui guident le jugement du LLM face à l'ambiguïté, aux edge cases, et aux situations non prévues par le process.

C'est ce qui rend le skill **opinionated** au lieu de générique. Sans croyances, le LLM donne des conseils Wikipedia. Avec des croyances, il a une OPINION.

**Règles de formulation :**
- **Règle en gras + explication du pourquoi.** Le LLM a besoin du "pourquoi" pour appliquer la règle correctement dans des cas nouveaux. Ex : "**Tous les business fonctionnent.** Si quelqu'un gagne de l'argent avec, ça marche. La question c'est pas 'est-ce que ce business marche' mais 'est-ce que je vais persévérer assez longtemps.'"
- Formuler comme des **absolus**, pas des suggestions. "Le produit DOIT avoir ≥4/5" > "Il est préférable d'avoir une bonne satisfaction."
- Utiliser des **métaphores** quand le concept est contre-intuitif (montagne, cocotier, seau percé, Pokémon). Les LLMs s'en servent pour raisonner ET pour les restituer à l'utilisateur.
- Pas de croyances évidentes. "Il faut écouter le client" n'est pas une croyance — c'est du bruit. Une croyance DOIT être quelque chose qu'un conseiller générique pourrait NE PAS dire.

### 3. Process — *"Quelles étapes, dans quel ordre, avec quelles décisions ?"*

**Ce que c'est :** Le déroulement séquentiel. Phases numérotées, avec des points de décision (if/then) et des branchements clairs.

**Règles de formulation :**
- **Phases numérotées** avec noms clairs : "Phase 3 — Proposer le top 3."
- Chaque phase contient : **quoi faire** + **quoi produire** + **quand passer à la suite**.
- Les **décisions = if/then explicites**, pas des descriptions floues. "Si l'entrepreneur a déjà un business → section Pivot. Sinon → Phase 1."
- **Impératif > déclaratif.** "Demande à l'entrepreneur X" > "L'entrepreneur devrait être interrogé sur X."
- **Mots exacts** quand la formulation compte. "Dis : 'Ton business, il y a des gens qui gagnent de l'argent avec ?'" — ça ancre le ton.
- **Référence inlinée.** Les données de référence (frameworks, matrices, catalogues) sont placées AU MOMENT du process où elles sont utilisées. Pas en annexe séparée, sauf si le catalogue est très gros (>30 items) — dans ce cas, section dédiée après le process, référencée depuis la phase.

### 4. Output — *"Qu'est-ce que je produis à la fin ?"*

**Ce que c'est :** Les templates, formats, fichiers produits, et fichiers Core/ mis à jour.

**Règles de formulation :**
- Templates avec **placeholders concrets** entre crochets : `[Description du produit/service en 2-3 phrases]`.
- Lister explicitement quels fichiers Core/ sont mis à jour et avec quoi.
- Si le skill produit un livrable (rapport, plan, offre), montrer le template exact.

### 5. Garde-fous — *"Qu'est-ce que je ne dois JAMAIS faire ?"*

**Ce que c'est :** Les erreurs les plus courantes qu'un conseiller générique ferait, et qu'on interdit. Anti-patterns + refus explicites.

**Règles de formulation :**
- Format : "**Ne JAMAIS X.**" ou "**REFUSE de X.**" — impératif négatif fort.
- Chaque anti-pattern inclut l'**alternative correcte** : "Ne jamais critiquer une idée sans alternative. Si une idée est mauvaise, dire pourquoi ET proposer mieux."
- **Spécifique > générique.** "REFUSE de lister plus de 5 problèmes" > "Ne pas lister trop de problèmes."
- Les garde-fous ne sont PAS des croyances inversées. "Ne jamais innover chez un débutant" est une croyance (positive : "copier ce qui marche"). Le garde-fou correspondant serait : "Si l'entrepreneur insiste pour innover sans expérience, appliquer la Philosophie Fondamentale avec conviction. Ne pas céder par politesse."

---

## Structure Canonique d'un Skill

```markdown
# Skill: [Nom]

[1-2 phrases : ce que le skill fait + quand il se déclenche]

## Objectif

[Résultat concret + output produit + critère de succès]

## Croyances

[Principes opinionated, règles absolues, philosophies, métaphores]

## Process

### Phase 0 — [Pré-check si nécessaire]
### Phase 1 — [Nom]
[Quoi faire, quoi produire, quand avancer]
[Référence inlinée si nécessaire : frameworks, matrices, scoring]

### Phase 2 — [Nom]
...

### Phase N — [Nom]
[Dernière phase = toujours mise à jour des fichiers Core/ + enchaînement]

## [Catalogue / Référence volumineuse] (optionnel)
[Seulement si >30 items — sinon, inline dans le process]

## Output
[Templates des livrables + liste des fichiers Core/ mis à jour]

## Garde-fous
[Anti-patterns avec alternatives + refus explicites]
```

---

## Checklist de Qualité

Avant de valider un skill, vérifier :

- [ ] **Objectif** est concret, mesurable, et tient en 3-5 lignes
- [ ] **Croyances** contiennent au moins 3 principes qu'un conseiller générique ne dirait PAS
- [ ] **Process** a des phases numérotées avec des décisions if/then explicites
- [ ] **Référence** est inlinée au bon moment du process (pas en annexe déconnectée)
- [ ] **Output** a des templates avec placeholders
- [ ] **Garde-fous** ont des alternatives concrètes, pas juste des interdictions
- [ ] Pas de **duplication** entre sections (une info = un seul endroit)
- [ ] Le skill est en **français** (langue de l'utilisateur BOS)
- [ ] Les **mots exacts** sont fournis pour les moments clés d'interaction
- [ ] Le skill **enchaîne** à la fin (pas de "reviens demain" — toujours une action immédiate)
