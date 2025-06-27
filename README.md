# Racing Car Game

This project is a 2D car racing game developed using the Godot Engine and scripted primarily in **GDScript** (Godot’s Python-like language). It offers both **single-player** and **two-player** modes, dynamic UI navigation, sound customization, and a visually engaging arcade-style racing experience.

---

## Overview

The Racing Car Game delivers an exciting gameplay experience across multiple racing tracks. It features:

- A main menu with animated UI and background music  
- Single-player mode with AI opponents, obstacle-filled tracks, and a high score system  
- Two-player local multiplayer with individual controls, competitive gameplay, and win tracking  
- Fully functional pause menus and customizable audio settings

---

## Game Modes

🔹 **Single Player (vs AI)**  
Choose between 3 car options. Compete against an AI-controlled car. Navigate through obstacles like stones and trucks.  
- Collisions trigger time penalties  
- Win by reaching the goal before the AI  
- Tracks your best completion time  
- Includes pause and end screens with options to replay, quit, or return to home

🔹 **Two Player (P1 vs P2)**  
Choose between 3 difficulty maps: Easy, Medium, Hard  
- Player 1 uses **Arrow Keys**  
- Player 2 uses **WASD**  
- First to finish wins  
- Game stops and displays winner UI  
- Replay, quit, or go to home screen options  
- Includes in-game pause menu

---

## UI & Navigation Flow

- **Loading Screen** – Loads assets and prepares the game environment  
- **Main Menu** – Background music; Options: Play, Options, Quit  
- **Options Menu** – Volume Control: Adjust UI, car engine, and master audio separately  
  - Help: Explains game rules, controls, and objective  
  - Back: Returns to the main menu  
- **Pause Menu (in-game)** – Appears in both single and two-player modes  
  - Options: Resume, Home, Quit, Volume Settings  
- **Game Over Screens** – Displays result: Win or Lose  
  - Options: Replay, Quit, Home

---

## Tracks & Controls

- **Tracks**: 3 in Two Player mode – Easy, Medium, Hard  
- **Controls**:  
  - Player 1: Arrow Keys  
  - Player 2: W, A, S, D  
- **Obstacles** in Single Player mode increase difficulty

---

## Features Summary

- Built using **Godot Engine**  
- Full UI navigation system with background music  
- Volume sliders for fine-grained control  
- AI opponent with fixed racing logic  
- Obstacles introduce time-based penalties  
- Score tracking and replayability  
- Clean and modular game structure with separated scenes and scripts

