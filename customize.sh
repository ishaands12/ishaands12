#!/bin/bash

# GitHub Profile Customization Script
# This script helps you quickly update placeholders in your README

echo "🚀 GitHub Profile Customizer"
echo "=============================="
echo ""

# Colors
BLUE='\033[0;34m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# Function to update placeholders
update_placeholder() {
    local placeholder=$1
    local value=$2

    if [ ! -z "$value" ]; then
        sed -i.bak "s|$placeholder|$value|g" README.md
        echo -e "${GREEN}✓${NC} Updated $placeholder"
    fi
}

echo -e "${BLUE}Let's personalize your GitHub profile!${NC}"
echo ""

# Get user inputs
echo "Enter your LinkedIn URL (or press Enter to skip):"
read linkedin_url

echo "Enter your Portfolio URL (or press Enter to skip):"
read portfolio_url

echo "Enter your Kaggle URL (or press Enter to skip):"
read kaggle_url

echo "Enter your Email (or press Enter to skip):"
read email

echo ""
echo "Updating README.md..."
echo ""

# Update placeholders
update_placeholder "YOUR_LINKEDIN_URL" "https://www.linkedin.com/in/bansalishaan/"
update_placeholder "YOUR_PORTFOLIO_URL" "https://ishaands.vercel.app/"
update_placeholder "YOUR_KAGGLE_URL" "$kaggle_url"
update_placeholder "YOUR_EMAIL" "ishaan.ds12@gmail.com"

# Clean up backup file
rm -f README.md.bak

echo ""
echo -e "${GREEN}✨ Done! Your profile is personalized!${NC}"
echo ""
echo "Next steps:"
echo "1. Review README.md to make sure everything looks good"
echo "2. Update the 'Currently Working On' section with your projects"
echo "3. Push to GitHub:"
echo "   git add ."
echo "   git commit -m 'Personalize profile'"
echo "   git push"
echo ""
echo "Happy coding! 🚀"
