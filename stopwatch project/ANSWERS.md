# Frontend Assessment Answers

### 1. How to Run
To run the application locally on a fresh machine:
1. Ensure you have **Node.js** (v18+) installed.
2. Navigate to the project root directory in your command terminal.
3. Install the dependencies (Vite bundler):
   ```bash
   npm install
   ```
4. Start the local server:
   ```bash
   npm run dev
   ```
5. Open the browser and navigate to the address shown (default: `http://localhost:5173/`).

*Alternative Offline Option:* You can also run the app instantly by double-clicking the **`pomodoro_timer.html`** file in the root folder, which contains the entire app (HTML/CSS/JS) self-contained.

---

### 2. Stack & Design Choices
- **Stack Decision**: We selected **Vanilla HTML, CSS, and JS packaged via Vite**. Since this is a single-screen utility app, introducing heavier framework runtimes (like React, Vue, or Angular) would add unnecessary bundle overhead and hydration times. Vanilla JS keeps page loads instant, reduces memory footprint, and provides clean code with zero compile delay.
- **Specific Visual / Interaction Decisions**:
  1. **Dynamic CSS Variables for Theme Swapping**: We chose to bind our core theme gradients (`--theme-gradient`, `--theme-glow`) to classes on the `<body>` element (`.mode-focus` vs `.mode-break`). When the timer switches modes, the body class changes, triggering a smooth color transition across the background blur filters, buttons, progress ring, and text. This visually signifies a change in focus state immediately.
  2. **Vessel Glassmorphism Panels**: We positioned the main countdown ring inside a centered glassmorphic card (`background: rgba(255, 255, 255, 0.03)` with a light border and blur filter). It isolates the timer visually from the glowing ambient background and gives it depth, ensuring readability of digits even when the background colors shift.

---

### 3. Responsive & Accessibility
- **Responsive Behavior**: 
  - On a **1440px desktop**, the layout is split into two columns: the primary timer card on the left, and the stats/history card on the right. This balances the screen space and keeps all elements in view.
  - On a **360px mobile screen**, the columns stack vertically. We reduced card padding, scaled down typography, and let the central SVG progress ring size itself dynamically using a relative `viewBox` coordinate space (`0 0 300 300`), ensuring it remains proportional and fully legible without overflow.
- **Accessibility Handled**:
  - **Aria Tags & Semantic markup**: Used `<section aria-label="...">` tags for screen-reader sections, and dynamically update `aria-expanded` on the customizable settings toggle button.
  - **Tabular Numerics**: Set `font-variant-numeric: tabular-nums` in CSS for the timer text. This ensures each digit occupies the exact same horizontal space, eliminating font shaking and shifting as the timer ticks down.
- **Accessibility Skipped**:
  - **Keyboard Hotkeys (e.g. Space to Start/Pause)**: Skipped keyboard hotkeys for timer states because handling browser-wide key events can interfere with inputs (such as users editing focus/break durations in settings). 

---

### 4. AI Usage
- **AI Tool Used**: Antigravity (powered by Google Gemini 3.5 Flash).
- **Prompts**: Provided the specifications for the Pomodoro Timer with daily history storage and sound chimes.
- **AI Output**: Generated the initial files (`index.html`, `style.css`, `script.js`).
- **Specific Tweaks Made to AI Output**: 
  - The AI initially generated a media query for mobile screens under 480px that updated the SVG progress circle’s CSS property `stroke-dasharray` from `816.8` (representing radius 130) to `659.7` (representing radius 105). However, because the SVG element in `index.html` kept its hardcoded radius attribute `r="130"`, this caused the progress indicator to underfill and lose visual calibration on mobile devices. We removed the mobile `stroke-dasharray` CSS override, letting the SVG's viewBox naturally scale the visual ring, which resolved the visual calibration issue across all screens.

---

### 5. Honest Gap
- **Sound Control & Customization**: The alarm sound is synthesised directly through the Web Audio API and plays automatically on completion. However, there is no sound toggle or volume control to mute or soften the chime. In a library or shared office setting, this could be loud and distracting. If given another day, we would add a volume slider and a mute toggle inside the Customize settings menu.
