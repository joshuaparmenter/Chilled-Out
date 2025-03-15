# Game Design Document

## 1.  Game Overview

* **Game Title:** Chilled Out
* **Genre:** Roguelike, Beat 'em up, Action
* **Platform:** PC
* **Target Audience:** Players who enjoy challenging dungeon-crawler games with randomized elements, character progression, and inventory management.
* **High-Level Concept:** A top-down roguelike game where players navigate randomized dungeons, battle enemies, and utilize portals for strategic combat and movement. The game blends beat 'em up action with elements of Vampire Survivors-style progression and unique inventory mechanics.
* **Brief Description:** Players explore dungeons, defeat waves of enemies, and collect and combine items to enhance their abilities. A core mechanic involves using portals for tactical advantages. The game features character progression, diverse enemies, and challenging boss encounters. 
## 2.  Core Gameplay Mechanics

* **Player Controls and Movement:**
    * Top-down perspective.
    * Dash/dodge mechanic (potentially regenerative or enhanced by inventory).
    * Portal creation and manipulation (left-click to set, right-click and drag for catapulting). 
* **Combat System:**
    * Diverse attack types. (baseline auto-damage, key-based specialty attacks, AOE). 
    * Critical hit multipliers.
    * Enemies with varied AI and attack patterns.
    * Boss encounters with unique mechanics (e.g., inventory disruption).
* **Inventory, Leveling, and Progression:**
    * Synergistic inventory system with Tetris-like shapes (1x3, 3x3, L-shaped).
    * Modular items that can be combined for upgrades.
    * Items found in treasure chests, dropped by enemies, and after defeating bosses.
    * Recipe books for item configurations (buffs/weaknesses).
    * Character progression through leveling up.
* **Interaction Systems:**
    * Portal usage for tactical movement, baiting enemies, and offensive maneuvers. 

## 3.  Game World & Setting

* **Game World:** Randomized dungeons.
* **World-Building Details:**
    * Dungeons with different levels, environments, puzzle elements, and enemies.

## 4.  Characters

* **Main Character:**
    * Player character with abilities enhanced by items and progression. 
* **Enemies:**
    * Generative AI waves for monsters.
    * Diverse enemy types with different behaviors. 
    * Boss enemies with unique abilities. 

## 5.  Art Style

* **Visual Aesthetics:** Pixel art.

## 6.  Audio & Music

* **Music and Sound Effects:** \[To be determined]
* **Music Themes:** Music themes for different parts of the game (e.g., exploration, combat). 

## 7.  Levels & Environments

* **Levels/Worlds:** Randomized dungeons with varying designs. 
* **Level Design Guidelines:** \[To be determined, but should include difficulty progression]

## 8.  UI/UX Design

* **Menu Designs:** Main menu, options menu. 
* **HUD:** Health, score, inventory display. 
* **Inventory UI:** Backpack/build system with drag-and-drop functionality.

## 9.  Story & Narrative

* Story elements may be present but are not the primary focus. 

## 10. Technical Specifications

* **Target Platforms:** PC 
* **Game Engine:** Godot
* **Code Architecture:**
    * Key systems include player movement, AI, inventory system, and portal management. 
* **Asset Pipeline:**
    * Assets include textures, sounds, and potentially 3D models. 
    * Consistent naming conventions for assets (e.g., enemy\_idle.png, player\_walk.ogg). 
* **Version Control:** Git. 

## 11. Monetization Strategy

* Currently open source.

## 12. Post-Launch

* **Allow Mods:** Modification framework for audio, items, enemies, and maps. 
* **New Features:** More enemies, relics, dungeons/levels. 
* **Content Roadmap:** Future updates, expansions, or additional content. 

## 13.  Development Priorities

* **Basic Scene Functionality:** Player, enemy, main scene, input manager.
* **Baseline Environment:** Floor tiles, wall tiles, player/enemy health and attacks, relics, dying, UI/Game Manager (score, health). [cite: 7]
* **Core Mechanics:** Portal movement, dash movement, combat system, inventory system. 
* **Enemy AI:** Enemy spawner and movement system. 
* **User Interface:** Main menu, health, dash, portal, inventory, attacks, score. 
* **Testing:** Test scripts, playtesting, bug fixes. 

