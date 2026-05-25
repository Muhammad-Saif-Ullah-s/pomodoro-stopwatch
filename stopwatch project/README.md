# Elegant Pomodoro Timer

A premium, single-screen Pomodoro Timer web application built with a modern glassmorphism design. The application automatically transitions between focus and break states, synthesizes a chime alarm when sessions end, tracks daily focus history, and preserves records across page reloads.

## Key Features

- **Drift-Free Countdown**: Utilizes high-accuracy timestamp delta calculations to ensure correct countdowns even when the browser tab goes into background sleep.
- **Auto-Switching Cycles**: Seamlessly transition from Focus (25 min default) $\rightarrow$ Break (5 min default) $\rightarrow$ Focus.
- **Synthesized Audio Alerts**: Utilizes the HTML5 Web Audio API to create a gentle, clean musical chime when each session ends (no external sound files required).
- **Persistent Daily History**: Keeps a chronological log of completed focus sessions for the day, persisting details across page reloads using `localStorage`.
- **Automatic Date Resets**: Automatically resets the session logs when a new calendar day starts.
- **Customizable Durations**: Easily configure custom focus and break session lengths.
- **Premium Responsive Design**: Fully responsive styling tailored for mobile screens (360px) up to high-resolution desktop screens (1440px).

---

## How to Run the App

### Option A: Local Dev Server (Vite)
To run the project with hot-reloading using the Vite server:

1. Make sure you have [Node.js](https://nodejs.org/) installed.
2. Open your terminal in the project directory.
3. Install the development packaging tools:
   ```bash
   npm install
   ```
4. Start the local server:
   ```bash
   npm run dev
   ```
5. Open your browser and navigate to the displayed local address (usually `http://localhost:5173/`).

### Option B: Direct Double-Click (Single File)
If you want to run the application immediately without installing dependencies:
1. Open the project folder.
2. Double-click the **`pomodoro_timer.html`** file.
3. The app will open and run in your browser immediately.
