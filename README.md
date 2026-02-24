# BoxFort Picking Efficiency Dashboard

Warehouse picking efficiency tracker — cross-references WorkForce Hero time tracking with ShipHero picker reports.

## Deploy to Railway

### Option A: GitHub (recommended)
1. Push this folder to a GitHub repo
2. Go to [railway.app](https://railway.app) → **New Project** → **Deploy from GitHub repo**
3. Select the repo — Railway auto-detects the Dockerfile
4. It will deploy automatically. Click **Generate Domain** under Settings to get your public URL.

### Option B: Railway CLI
```bash
npm install -g @railway/cli
railway login
railway init
railway up
railway domain   # generates a public URL
```

## Project Structure
```
├── server.js        # Node server (serves static files, reads PORT env var)
├── package.json
├── Dockerfile
└── public/
    └── index.html   # The dashboard (fully self-contained)
```

No dependencies, no build step. The dashboard is a single HTML file with embedded data and CSV upload support.
