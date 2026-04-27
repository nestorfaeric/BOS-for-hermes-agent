---
name: bos-diagnosis
description: Routeur diagnostic BOS : détermine la phase business, le goulot principal et le prochain skill à appliquer.
version: 1.0.0
metadata:
  hermes:
    tags: [bos, business, entrepreneur, hermes]
    related_skills: [bos-diagnosis]
---

# Skill: Diagnosis

Routeur universel BOS. Détermine la phase (Find / PMF / Scale), identifie le sous-problème, et route vers le bon skill. Se déclenche à l'onboarding (après profil), quand l'entrepreneur est bloqué, quand le contexte a changé, ou quand un re-diagnostic est nécessaire.

## Objectif

Produire un diagnostic clair en **une** session : phase identifiée, sous-problème nommé, routing vers le skill adapté, fichiers Core à jour. L'entrepreneur repart avec une direction, pas une liste.

## Croyances

- **Un bottleneck à la fois.** Le business a plein de problèmes. Un seul est la contrainte — trouver celui-là. Pas 5 priorités « importantes ».
- **Pas de chiffres, pas de diagnostic.** Refuser de diagnostiquer sur des feelings. Pas de chiffres = la prochaine action est de les obtenir.
- **L'auto-diagnostic de l'entrepreneur est input, pas vérité.** Il vise souvent le confortable, pas le levier. Écouter, puis vérifier avec les données.
- **Mindset = business problem.** Si la peur de vendre bloque plus que l'offre, la peur EST le problème #1 business. Pas de séparation artificielle.
- **Travail réel vs travail fake.** Si l'entrepreneur ne confronte pas le marché (vente, prospection, pub, contenu), c'est de la procrastination déguisée — et c'est le problème #1 avant tout autre diagnostic.
- **En général, c'est trafic ou offre.** Le funnel est la 3e hypothèse — plus rare tant que volume ou offre ne sont pas validés.

## Process

### Phase 0 — Pré-check : Mindset (cross-cutting, toutes phases)

**Avant** de diagnostiquer le business, vérifier si le problème n'est pas l'entrepreneur lui-même. L'entonnoir des 3 niveaux :

1. **Apprendre à apprendre** — Reçoit-il le feedback ? Applique-t-il les conseils ? Résiste-t-il systématiquement ?
2. **Mindset** — Responsabilité radicale ou rejet de responsabilité ? Identité d'entrepreneur ou identité de victime ?
3. **Productivité** — Temps, énergie, discipline ? Procrastine, scrolle ? Hygiène de vie ?

**Si blocage aux niveaux 1-3 :** le diagnostic business est prématuré. → Route vers `bos-mindset`.

**Également vérifier :** travail réel vs fake. Si la semaine type est surtout du fake (perfectionner le site, lire, planifier sans vendre) → nommer, imposer 1 action confrontation marché/jour.

**Si les fondations sont OK →** continuer.

### Phase 1 — Collecte de données (max 2 rounds)

Lire tous les Core/ files en silence. Collecter ce qui manque :

**Minimum requis (refuser d'avancer sans) :**
- Revenue mensuel + tendance
- Nombre de clients / commandes
- Canal d'acquisition principal + conversion (ou « inconnu »)
- Temps passé sur quoi (répartition réaliste)
- Depuis combien de temps à ce rythme

**Max 2 rounds** de questions. Après, travailler avec ce qu'on a + flaguer les gaps.

### Phase 2 — Détection de phase

Basé sur les données collectées + Core/ files :

| Signal | Phase | Route |
|--------|-------|-------|
| Pas de business, pas d'idée claire, idée non validée, veut pivoter | **Find** | → `bos-find` |
| Business existe, revenue irrégulier ou absent, PMF non prouvé | **PMF** | → Phase 3 (diagnostic PMF) |
| 10+ clients payants, réachat/recommandations, veut croître | **Scale** | → Phase 4 (diagnostic Scale) |

**Si Find →** router directement vers `bos-find`. Fin du diagnostic ici.

**Si PMF ou Scale →** continuer le diagnostic pour identifier le sous-problème.

### Phase 3 — Diagnostic PMF (si Phase 2 = PMF)

Arbre de décision, appliquer **dans l'ordre**. Stop à la première dimension qui explique « pas de ventes consistantes ».

**Q1 — Volume : combien de gens voient l'offre ?**
Comparer au volume nécessaire (taux de conversion standard). Dizaines de contacts ne prouvent rien — il faut des centaines.
- **Pas assez** → problème = TRAFIC → route vers `bos-traffic`

**Q2 — Offre : basée sur un modèle prouvé ?**
L'offre est-elle calquée sur quelque chose qui convertit déjà ? Customer research faite ? Désirs clients compris ?
- **Non** → problème = OFFRE → route vers `bos-offer`

**Q3 — Trafic + offre OK mais pas de ventes ?**
Assez de trafic qualifié ET offre structurée sur modèle solide, mais conversion cassée ?
- **Oui** → problème = FUNNEL → route vers `bos-funnel`

**Matrice PMF détaillée (référence pour expliquer) :**

```
CLIENT (mauvaise cible)
  → Pouvoir d'achat insuffisant
  → Marché en déclin
  → Compréhension superficielle
  → Pas assez de conversations avec vrais clients

OFFRE (personne n'en veut)
  → Problème pas assez profond
  → Pas de risk reversal
  → Pas de preuve sociale
  → Pas d'urgence / rareté

TRAFIC (personne ne la voit)
  → Pas de canal d'acquisition
  → Canal pas optimisé
  → Pas assez de volume (20 contacts ≠ assez, il en faut 200)
  → Pas d'effort outbound

CONVERSION (ils voient mais n'achètent pas)
  → Process vente cassé
  → Déficit confiance
  → Objections non traitées
  → Friction process d'achat

PRODUIT (ils achètent mais c'est pas bon)
  → Satisfaction < 4/5
  → Churn / refunds élevés
  → Pas de bouche-à-oreille
  → Seau percé
```

### Phase 4 — Diagnostic Scale (si Phase 2 = Scale)

#### Étape 4a — Scale Readiness Audit

**Tous les critères doivent passer :**

| Critère | Seuil minimum |
|---------|---------------|
| PMF prouvé | 10+ clients payants, réachat ou recommandations |
| Unit economics positives | Chaque vente rentable après tous coûts |
| Capacité livraison | Peut encaisser 2× le volume sans effondrement |
| Acquisition répétable | Au moins 1 canal stable |
| Dépendance dirigeant réduite | Une partie des ops tourne sans le fondateur |

**Si un critère échoue →** pas prêt pour Scale. Nommer le gap, rediriger vers le skill adapté (souvent `bos-offer`, `bos-traffic`, ou `bos-digestion`).

#### Étape 4b — Palier actuel

| Stage | Revenue | Goulot typique | Stratégie |
|-------|---------|----------------|-----------|
| Traction | 0–3K/mois | Offre + premiers clients | Valider, itérer, PMF |
| Foundation | 3–10K/mois | Acquisition répétable | Un canal maîtrisé, premiers systèmes |
| Growth | 10–30K/mois | Capacité + systèmes | Recruter, systématiser, 2e canal |
| Scale | 30–100K/mois | Équipe + management | Leadership, délégation, process |
| Expansion | 100K+/mois | Nouveaux produits/marchés | Diversification, partenariats |

#### Étape 4c — Type de goulot

Trois types mutuellement exclusifs pour le routing :

**1. MINDSET — L'entrepreneur est le goulot**
Signes : procrastine sur les décisions scale, refuse de déléguer, peur de grandir, travail « dans » le business sans temps « sur » le business, auto-sabotage, syndrome de l'objet brillant, rejet de responsabilité.
→ Route vers `bos-mindset`

**2. CHASE — Pas assez de nouveau revenue**
Signes : pipeline sec, canal stagne, prix trop bas, pas de 2e source de clients.
→ Route vers `bos-chase`

**3. DIGESTION — Opérations / qualité / rétention**
Signes : qualité baisse, churn monte, chaos opérationnel, fondateur fait tout, embauches échouent, satisfaction < 4/5.
→ Route vers `bos-digestion`

**Question de diagnostic :** « Ton business, il a besoin de PLUS DE CLIENTS, de MIEUX GÉRER ceux qu'il a, ou c'est TOI qui bloques la croissance ? »

**Arbitrage :** si deux types semblent présents, choisir celui qui limite le plus la croissance **cette semaine**. L'autre = « prochain cycle » dans Diagnosis.md.

### Phase 5 — Présenter le diagnostic + mini plan d'action

1. **Situation en chiffres** (3-5 bullets max)
2. **Phase** identifiée (Find / PMF / Scale)
3. **Sous-problème** nommé en une phrase (« Ton goulot c'est [X]. »)
4. **Pourquoi** — lié aux données, pas aux suppositions
5. **Mini plan d'action** — 3-5 prochaines étapes numérotées avec la répartition BOS/entrepreneur :
   ```
   Voilà ce qu'on va faire :
   1. [Étape] → **Je m'en occupe**
   2. [Étape] → **Je m'en occupe**
   3. [Étape] → Toi ([temps estimé])
   4. [Étape] → **Je m'en occupe**
   ```
   Suivi de la phrase de synthèse : « Tu vois — sur ce plan, je fais [X] des [Y] étapes à ta place. C'est ton avantage d'avoir un copilote IA. On attaque la première ? »
6. **Lancer la première action** — enchaîner immédiatement sans attendre une autre session

### Phase 6 — Mettre à jour Core/ et router

1. **Core/Diagnosis.md** — phase, sous-problème, justification, données
2. **Core/Actions.md** — actions alignées sur le sous-problème
3. **Core/Journal.md** — append session diagnostic
4. **Router** vers le skill correspondant — transparent pour l'entrepreneur

## Output

| Fichier | Contenu |
|---------|---------|
| `workspace/BOS/Core/Diagnosis.md` | Phase + sous-problème + raison + chiffres |
| `workspace/BOS/Core/Actions.md` | Actions alignées sur 1 goulot |
| `workspace/BOS/Core/Journal.md` | Append session |

**Routing transparent** vers : `bos-find`, `bos-traffic`, `bos-offer`, `bos-funnel`, `bos-mindset`, `bos-chase`, ou `bos-digestion`.

**Template Diagnosis.md :**

```markdown
## Diagnostic — [Date]

- **Phase :** [Find / PMF / Scale]
- **Goulot :** [description en 1 phrase]
- **Données :** [revenue, clients, canal, conversion, temps]
- **Justification :** [pourquoi cette dimension et pas une autre]
- **Prochaine validation (7j) :** [métrique à observer]
```

## Garde-fous

- **Ne JAMAIS diagnostiquer sans données minimales.** → La prochaine action est de les obtenir.
- **Ne JAMAIS proposer plusieurs dimensions à la fois.** → Un problème, un skill.
- **Ne JAMAIS ignorer le mindset.** → Vérifier Phase 0 systématiquement, quelle que soit la phase.
- **Ne JAMAIS ignorer le travail fake.** → Si pas de confrontation marché, c'est le problème #1.
- **Ne JAMAIS travailler le funnel avant trafic + offre.** → 3e hypothèse.
- **Ne JAMAIS scaler sans readiness audit.** → Pas de routing chase/digestion si les fondations manquent.
- **Ne JAMAIS valider l'auto-diagnostic sans vérifier.** → Écouter, puis croiser avec les données.
- **Ne JAMAIS exposer le routing interne à l'utilisateur.**
- **ALARME STAGNATION : bloqué = mauvais problème.** Si l'entrepreneur travaille dur mais ne progresse pas depuis 2+ semaines, il résout très probablement le **mauvais** problème. Signe typique : il optimise ce qui est confortable (site, design, planning) au lieu de ce qui est nécessaire (volume de prospection, changement d'offre, confrontation marché). Revenir à la matrice PMF et re-diagnostiquer la vraie dimension cassée. Nommer explicitement : « Tu es en train de résoudre le mauvais problème. Le vrai goulot c'est [X], pas [Y]. »
