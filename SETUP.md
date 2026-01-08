# 🚀 GitHub Profile Setup Guide

## Step 1: Create the Repository

1. Go to GitHub: https://github.com/new
2. Create a new repository named **exactly**: `ishaands12`
3. Make it **Public**
4. Do NOT initialize with README (we already have one!)
5. Click "Create repository"

## Step 2: Customize Your Profile

Before pushing, update these sections in `README.md`:

### Update Your Links
Replace these placeholders with your actual links:
- `YOUR_PORTFOLIO_URL` - Your portfolio website
- `YOUR_LINKEDIN_URL` - Your LinkedIn profile
- `YOUR_KAGGLE_URL` - Your Kaggle profile
- `YOUR_EMAIL` - Your email address

### Update Repository Cards
Make sure these repositories exist (or change to your actual repos):
- `ai-data-canvas`
- `finance-assistant`

You can add more repo cards by copying the format:
```markdown
[![Repo Name](https://github-readme-stats.vercel.app/api/pin/?username=ishaands12&repo=YOUR_REPO_NAME&theme=tokyonight&hide_border=true&bg_color=0D1117&title_color=3B88C3&icon_color=3B88C3)](https://github.com/ishaands12/YOUR_REPO_NAME)
```

## Step 3: Push to GitHub

From the `ishaands12` directory, run:

```bash
cd /Users/ishaan/ishaands12
git init
git add .
git commit -m "Initial commit: Interactive profile with data science vibes"
git branch -M main
git remote add origin https://github.com/ishaands12/ishaands12.git
git push -u origin main
```

## Step 4: Enable GitHub Actions

1. Go to your repository: https://github.com/ishaands12/ishaands12
2. Click on "Actions" tab
3. Enable Actions if prompted
4. The snake animation workflow will run automatically every 12 hours

**Note:** The snake animation might take a few hours to appear initially. You can manually trigger it by:
- Going to Actions → Generate Snake Animation → Run workflow

## Step 5: Optional Enhancements

### Add WakaTime Stats (Coding Activity)
1. Sign up at https://wakatime.com/
2. Install WakaTime plugin in your IDE
3. Get your API key
4. Add to GitHub secrets: Settings → Secrets → New secret
   - Name: `WAKATIME_API_KEY`
   - Value: Your API key
5. Add this workflow file (`.github/workflows/waka-readme.yml`):

```yaml
name: Waka Readme

on:
  schedule:
    - cron: '0 0 * * *'
  workflow_dispatch:

jobs:
  update-readme:
    name: Update Readme with Metrics
    runs-on: ubuntu-latest
    steps:
      - uses: anmol098/waka-readme-stats@master
        with:
          WAKATIME_API_KEY: ${{ secrets.WAKATIME_API_KEY }}
          GH_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```

### Add Profile Views Counter
Already included! The view counter updates automatically.

### Customize Colors
Current theme: **Tokyo Night** with custom blue accent (`#3B88C3`)

To change colors, modify these hex codes in README.md:
- `3B88C3` - Main accent color (blue)
- `0D1117` - Background color (dark)
- `FF6B6B` - Fire/streak color (red-pink)

### Add More Widgets

**GitHub Stats Alternative Themes:**
- `radical`, `merko`, `gruvbox`, `dark`, `tokyonight`, `onedark`, `cobalt`, `synthwave`
- Change `theme=tokyonight` to any theme above

**More Badge Options:**
- Visit: https://shields.io/
- Visit: https://github.com/alexandresanlim/Badges4-README.md-Profile

## 🎨 Color Scheme

Current palette:
- Primary: `#3B88C3` (Ocean Blue)
- Background: `#0D1117` (Dark Blue-Black)
- Accent: `#FF6B6B` (Coral Red)
- Theme: Tokyo Night

## 📝 Tips

1. **Keep it updated**: Update your "Currently Working On" section regularly
2. **Add real projects**: Replace placeholder repos with your actual work
3. **Pin best repos**: Pin your 4-6 best repositories on GitHub
4. **Add descriptions**: Make sure all your repos have good descriptions
5. **Use topics**: Add relevant topics/tags to your repositories

## 🐛 Troubleshooting

**Stats not showing?**
- Make sure your repos are public
- Wait 24 hours for cache to update
- Try adding `&cache_seconds=1800` to the URL

**Snake animation not working?**
- Check if Actions are enabled
- Manually trigger the workflow
- Make sure you have commits to show

**Links broken?**
- Double-check you replaced ALL placeholder URLs
- Make sure URLs start with `https://`

## 🚀 You're All Set!

Your profile will look amazing! Don't forget to:
- ⭐ Star some repos
- 🍴 Fork interesting projects
- 💬 Engage with the community
- 📝 Keep your profile updated

---

Need help? Feel free to reach out or check GitHub's profile README documentation:
https://docs.github.com/en/account-and-profile/setting-up-and-managing-your-github-profile/customizing-your-profile/managing-your-profile-readme
