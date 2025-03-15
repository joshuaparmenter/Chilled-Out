
# Game Design Document

## 1.  Game Overview

* **Game Title:** \[Your Game Title] (To be determined)
* **Genre:** Roguelike, Beat 'em up, Action
* **Platform:** \[Target Platform(s)] (To be determined)
* **Target Audience:** Players who enjoy challenging action games with randomized elements, character progression, and inventory management.
* **High-Level Concept:** A top-down roguelike game where players navigate randomized dungeons, battle enemies, and utilize portals for strategic combat and movement. The game blends beat 'em up action with elements of Vampire Survivors-style progression and unique inventory mechanics.
* **Brief Description:** Players explore dungeons, defeat waves of enemies (potentially using generative AI), and collect items to enhance their abilities. A core mechanic involves using portals for tactical advantages. The game features character progression, diverse enemies, and challenging boss encounters. [cite: 1, 12, 13, 14, 72]

## 2.  Core Gameplay Mechanics

* **Player Controls and Movement:**
    * Top-down perspective.
    * Dash/dodge mechanic (potentially regenerative or enhanced by inventory).
    * Portal creation and manipulation (left-click to set, right-click and drag for catapulting). [cite: 2]
* **Combat System:**
    * разнообразные атаки (baseline auto-damage, key-based specialty attacks, AOE). [cite: 2, 3]
    * Critical hit damage.
    * Enemies with varied AI and attack patterns. [cite: 17]
    * Boss encounters with unique mechanics (e.g., inventory disruption).
* **Inventory, Leveling, and Progression:**
    * Synergistic inventory system with Tetris-like shapes (1x3, 3x3, L-shaped).
    * Modular items that can be combined for upgrades.
    * Items found in treasure chests, dropped by enemies, and after defeating bosses.
    * Recipe books for item configurations (buffs/weaknesses).
    * Character progression through leveling up.
* **Interaction Systems:**
    * Portal usage for tactical movement, baiting enemies, and offensive maneuvers. [cite: 2]

## 3.  Game World & Setting

* **Game World:** Randomized dungeons.
* **World-Building Details:**
    * Dungeons with different levels, environments, and enemies.

## 4.  Characters

* **Main Character:**
    * Player character with abilities enhanced by items and progression. [cite: 16, 17]
* **Enemies:**
    * Generative AI waves for monsters.
    * Diverse enemy types with different behaviors. [cite: 3, 17]
    * Boss enemies with unique abilities. [cite: 3, 17]

## 5.  Art Style

* **Visual Aesthetics:** Pixel art. [cite: 3, 18]

## 6.  Audio & Music

* **Music and Sound Effects:** \[To be determined]
* **Music Themes:** Music themes for different parts of the game (e.g., exploration, combat). [cite: 19, 20]

## 7.  Levels & Environments

* **Levels/Worlds:** Randomized dungeons with varying designs. [cite: 1, 21, 22]
* **Level Design Guidelines:** \[To be determined, but should include difficulty progression]

## 8.  UI/UX Design

* **Menu Designs:** Main menu, options menu. [cite: 22, 7]
* **HUD:** Health, score, inventory display. [cite: 3, 7, 22]
* **Inventory UI:** Backpack/build system with drag-and-drop functionality.

## 9.  Story & Narrative

* Story elements may be present but are not the primary focus. [cite: 13, 14, 24]

## 10. Technical Specifications

* **Target Platforms:** \[To be determined]
* **Game Engine:** \[To be determined, examples: Godot, Unity]
* **Code Architecture:**
    * Key systems include player movement, AI, inventory system, and portal management. [cite: 30]
* **Asset Pipeline:**
    * Assets include textures, sounds, and potentially 3D models. [cite: 33, 42]
    * Consistent naming conventions for assets (e.g., enemy\_idle.png, player\_walk.ogg). [cite: 44]
* **Version Control:** Git. [cite: 36]

## 11. Monetization Strategy

* \[To be determined: Pricing models (upfront purchase, etc.)] [cite: 26, 27]

## 12. Post-Launch

* **Allow Mods:** Modification framework for audio, items, enemies, and maps. [cite: 4]
* **New Features:** More enemies, relics, dungeons/levels. [cite: 74]
* **Content Roadmap:** Future updates, expansions, or additional content. [cite: 71]

## 13.  Development Priorities

* **Basic Scene Functionality:** Player, enemy, main scene, input manager. [cite: 5, 6]
* **Baseline Environment:** Floor tiles, wall tiles, player/enemy health and attacks, relics, dying, UI/Game Manager (score, health). [cite: 7]
* **Core Mechanics:** Portal movement, dash movement, combat system, inventory system. [cite: 72]
* **Enemy AI:** Enemy spawner and movement system. [cite: 72]
* **User Interface:** Main menu, health, dash, portal, inventory, attacks, score. [cite: 73]
* **Testing:** Test scripts, playtesting, bug fixes. [cite: 73]

This document provides a solid foundation. Remember to expand on each section as your game development progresses!
