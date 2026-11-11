# ScoreAnalyse — Mémoire Claude

## Projet

- App « Table d'analyse » (v2.2, cf. `VERSION`) de la suite ScoreSuite (`../`).
- Analyse musicale sur systèmes de partition découpés (via ScoreCutting), impression.
- Front : HTML/CSS/JS statique (`index.html`, `js/`, `css/`, jQuery dans `js/jquery`).
- Back : Ruby + WAA (driver navigateur) — lancement `score_analyse.rb <dossier analyse>`.
- Libs Ruby : `lib/required.rb` charge `../../lib/required` (lib commune ScoreSuite) puis `lib/required/**`.
- Modules : `lib/modules/` (aide, export HTML, SVG, création analyse…).
- Préférences app : `prefs.rb` (YAML : dernière analyse chargée).
- Dossier analyse : YAML identité + préférences + marques, dossier images systèmes, `assets`.
- Doc : `Manuels/Manuel_dev.md`, `Manuels/Tutoriel_ScoreAnalyse.md`.
- Tests : `tests/tests.js`, `js/waa_tests.js`.
- TODO : issues via `ghi`, label `analyse`.

## Notes de session

- Réponses : « Fait. » + strict minimum. Aucune explication non demandée.
## À faire (prochaine session)

1. BUG : aucun système ne s'affiche.
2. Page blanche : seuls des messages d'aide s'affichent.
3. Essayer rapidement l'enregistrement.
4. Mettre en place des tests pour l'application.

## Second temps : refonte

- Reprendre entièrement l'app pour qu'elle marche parfaitement.
- Le système est bon, mais la forme générale (notamment WAA) ne plaît plus à Phil → quelque chose de plus simple, avec les moyens actuels.
- GARDER UN MAXIMUM du fonctionnement actuel côté JS.
- Modifications limitées à la partie serveur + relation front ↔ back.

## Divers

- Lancement : `_run_app.command` → analyses dans `./analyses/`. Ruby 2.7.3 (Psych 3.1). Gem `dimensions` manquante (création d'analyse).

