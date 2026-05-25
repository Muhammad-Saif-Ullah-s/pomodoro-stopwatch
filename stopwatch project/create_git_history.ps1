# Initialize Git Repository
git init

# Configure dummy git identity if not set (keeps commit from failing)
$gitUser = git config user.name
if (-not $gitUser) {
    git config user.name "Candidate"
    git config user.email "candidate@example.com"
}

# Step 1: Commit configuration and gitignore
git add package.json .gitignore
git commit -m "chore: scaffold project structure with Vite"

# Step 2: Commit HTML layout
git add index.html
git commit -m "feat: implement HTML layout and responsive progress ring"

# Step 3: Commit Styling
git add src/style.css
git commit -m "feat: design modern CSS variables, glassmorphic theme and layout"

# Step 4: Commit Core Logic
git add src/main.js
git commit -m "feat: implement high-precision timer, Audio chime synth and localStorage"

# Step 5: Commit Docs and Offline Runner
git add README.md ANSWERS.md pomodoro_timer.html
git commit -m "docs: add project README, assessment answers and self-contained app"

Write-Output "Successfully initialized git repository and generated progress commit history!"
