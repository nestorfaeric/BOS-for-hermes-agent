---
name: bos-funnel
description: Diagnostiquer et réparer la conversion quand trafic et offre existent mais ne convertissent pas assez.
version: 1.0.0
metadata:
  hermes:
    tags: [bos, business, entrepreneur, hermes]
    related_skills: [bos-diagnosis]
---

# Skill: Funnel

Optimiser le tunnel de conversion quand le trafic et l'offre sont déjà des hypothèses validées. Déclenché quand `bos-diagnosis` identifie un problème de conversion en phase PMF — en 3e position (après trafic et offre) car c'est le cas le plus rare : assez de volume qualifié, offre structurée, mais la conversion casse.

Beaucoup d'entrepreneurs « optimisent le funnel » alors que le vrai problème est le volume ou l'offre. Ce skill **assume** : trafic suffisant pour apprendre, offre crédible — sinon **renvoyer** vers `bos-traffic` ou `bos-offer`. Ici : données d'abord, un levier à la fois, IA pour ~80% du travail (copy, structure, propositions de test).

## Objectif

À la fin de la session : carte du tunnel **complète**, métriques par étape, **comparaison aux benchmarks**, **plus gros drop-off identifié**, **recommandations priorisées** (levier #1), et **au moins une variante concrète** (copy réécrite, restructure page, plan de test) produite par BOS. Fichiers Core et Output à jour.

**Critères de succès :** décisions **chiffrées** ; une hypothèse de correction **à la fois** ; pas d'optimisation « au feeling ».

## Croyances

- **Le funnel est la dernière hypothèse.** Si trafic insuffisant ou offre non validée, le problème **n'est pas** le funnel — diagnostiquer autrement.
- **Data-driven, pas opinion-driven.** Chaque décision doit s'appuyer sur des chiffres (ou sur un plan explicite pour les obtenir).
- **Plus gros drop-off d'abord.** On perd le plus de monde à un endroit précis — c'est là le levier #1.
- **Un seul changement à la fois.** Sinon on ne sait pas ce qui a marché.
- **Des benchmarks standards existent.** Comparer **avant** de crier au désastre ou de se féliciter.
- **L'IA peut faire ~80% de l'optimisation** — réécriture, structure, suggestions A/B ; l'humain valide, publie, et respecte la discipline de mesure.

## Process

### Phase 1 — Mapper le tunnel complet

Pour **chaque étape**, nommer la source et la sortie :

**Source trafic** → **Landing / site** → **Intérêt** (scroll, clic, temps) → **Considération** (lead, panier, booking) → **Achat** → **Post-achat** (onboarding, usage, réachat, referral).

Adapter les libellés au modèle (SaaS, e-com, services, appels). Inclure **toutes** les branches (ex. email nurture, relances panier).

### Phase 2 — Collecter les données à chaque étape

Exemples de métriques (choisir ce qui colle au business) :

- Visiteurs uniques, sessions
- Clics CTA, taux de clic
- Leads / inscriptions / add-to-cart
- Checkout initié vs complété
- Achats, panier moyen
- Emails : envoi, ouverture, clic
- Appels : bookés, show rate, close rate

Si données manquantes → **première action** = instrumentation minimale (analytics, tableaux, exports) — pas « optimiser à l'aveugle ».

### Phase 3 — Comparer aux benchmarks standard

Utiliser des ordres de grandeur **indicatifs** (ajuster selon industrie et source) :

| Étape (indicatif) | Ordre de grandeur souvent cité |
|-------------------|--------------------------------|
| Landing → lead (B2B lead gen) | Variable ; viser amélioration vs baseline propre |
| Page produit → add to cart | ~2-5% visiteurs (e-com — très variable) |
| Checkout completion | Souvent 40-70% du checkout initié (à calibrer) |
| Email open (campagnes) | Souvent ~20-30% si liste engagée (très variable) |
| Email click | Souvent ~2-5% du send (variable) |

**Règle :** la valeur absolue compte moins que **ton** historique ; les benchmarks servent à contextualiser (« on est sous le plausible » vs « le problème est en amont »).

### Phase 4 — Identifier le plus gros drop-off

Calculer les **pertes relatives** entre étapes : où perd-on le plus de gens en proportion ou en volume absolu qualifié ?

Prioriser **une** étape pour la suite (levier #1). Documenter l'hypothèse (« friction checkout », « promesse landing ≠ offre », etc.) liée au chiffre.

### Phase 5 — Proposer des améliorations (levier #1 d'abord)

Pour l'étape retenue :

- **Copy** — titres, bullets, garanties, objections.
- **Structure** — hiérarchie page, ordre des sections, nombre de champs formulaire.
- **Design / UX** — lisibilité mobile, CTA visibles, charge cognitive.
- **Confiance** — preuve, risque inversé, clarté du next step.

BOS rédige **2-3 variantes** testables pour **un** changement principal (ex. headline seulement).

### Phase 6 — Implémenter avec l'IA (BOS)

- Réécriture des blocs prioritaires.
- Proposition de structure alternative (wireframe textuel).
- Si pertinent : plan de test A/B sur une variable — hypothèse, variante A/B, métrique de succès, durée minimale.

### Phase 7 — Mesurer et itérer

- **1 changement** (ou une famille cohérente : ex. uniquement la page panier).
- **Mesurer** sur une fenêtre définie (souvent ~1 semaine minimum si volume suffisant — sinon plus long ou abandon du test statistique au profit de volumes plus hauts).
- Réévaluer : garder, itérer, ou passer au 2e drop-off.

## Output

| Fichier | Contenu |
|--------|---------|
| `workspace/BOS/Output/Funnel_Audit_[date].md` | Carte tunnel + données + benchmarks + drop-offs + reco + plan de test |
| `workspace/BOS/Core/Actions.md` | Actions prioritaires (mesure, implémentation, suivi) |
| `workspace/BOS/Core/Business.md` | Section conversion / funnel si utile (état, KPIs, expériences en cours) |

## Garde-fous

- **Ne JAMAIS optimiser le funnel si le trafic est insuffisant pour conclure** — d'abord le volume (`bos-traffic`).
- **Ne JAMAIS changer plusieurs choses à la fois** — un changement, une mesure.
- **Ne JAMAIS optimiser sans données** — « je pense que c'est X » sans chiffres = interdit ; obtenir le minimum de métriques ou le dire explicitement.
- **Ne JAMAIS ignorer le contexte** — ~10 visiteurs/semaine : pas besoin d'A/B test statistique ; besoin de trafic ou de tests qualitatifs.
- **Ne JAMAIS traiter le funnel en premier si l'offre ou le volume n'est pas validé** — ordre PMF : offre / trafic avant conversion fine.
