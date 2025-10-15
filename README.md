TaJMahal est une application mobile développée en SwiftUI permettent à l'utilisateur de consulter le menu d'un restaurant indien. 
Le projet implemente en particulier une architecture MVVM (Model-View-ViewModel) ainsi que des tests unitaires.

✨Fonctionnalités Clés
Écran d'Accueil (Welcome View) : Présentation du restaurant avec les informations clés (horaires, adresse, contact).
Menu Détaillé : Affichage du menu complet, structuré par sections (Entrées, Plats Principaux).
Fiches Plats (Detail View) : Consultation des détails de chaque plat

Navigation Intuitive : Utilisation de la navigation native de SwiftUI avec une personnalisation de la barre de navigation.

🧱 Architecture Technique
Ce projet est conçu en respectant les principes d'une architecture moderne et maintenable.
1. SwiftUI
L'interface est entièrement construite avec le framework déclaratif de Apple, assurant une UI réactive et un code plus concis.
2. Pattern MVVM (Model-View-ViewModel)
Model (Dish, SpiceLevel) : Définit les structures de données de l'application. La structure Dish implémente les protocoles Identifiable et Hashable.
View (WelcomeView, MenuView, etc.) : Contient le code d'interface utilisateur et se concentre uniquement sur l'affichage.
ViewModel : Gère la logique de l'application et prépare les données pour les vues.

🛠️ Bonnes Pratiques Mises en Œuvre
Modélisation des Données
Sécurité des types : Utilisation d'un enum (SpiceLevel) pour gérer les niveaux d'épice.

Rigueur du Typage : Prévu pour utiliser des types monétaires précis (Decimal ou Double) pour la propriété price (évitant les String).

Tests Unitaires (XCTest)
Isolation des Tests : Utilisation des méthodes setUp() et tearDown() pour garantir que chaque test s'exécute dans un environnement propre et isolé.

Mocking et Injection de Dépendances : ViewModel initialisé avec un repository simulé (mocked), assurant que les tests valident la logique métier sans dépendre des dépendances externes (API, base de données).

Contrôle d'Accès : Utilisation de l'attribut @testable pour un accès contrôlé aux types internal lors des tests.
