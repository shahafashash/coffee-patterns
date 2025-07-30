#!/bin/bash

# 🛡️ Coffee Patterns Repository Security Setup Script
# This script helps you complete the security setup for your repository

set -e

echo "🛡️ Coffee Patterns Security Setup"
echo "=================================="
echo ""

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Check if we're in a git repository
if ! git rev-parse --git-dir > /dev/null 2>&1; then
    echo -e "${RED}❌ This script must be run from within a git repository${NC}"
    exit 1
fi

echo -e "${BLUE}📋 Checking repository setup...${NC}"

# Check if remote origin exists
if ! git remote get-url origin > /dev/null 2>&1; then
    echo -e "${RED}❌ No remote origin found. Please set up your GitHub repository first.${NC}"
    exit 1
fi

REPO_URL=$(git remote get-url origin)
echo -e "${GREEN}✅ Repository: $REPO_URL${NC}"

echo ""
echo -e "${YELLOW}🔧 Manual Setup Required${NC}"
echo "The following steps must be completed manually in GitHub:"
echo ""

echo -e "${BLUE}1. Branch Protection Rules${NC}"
echo "   • Go to Settings → Branches → Add rule"
echo "   • Apply to 'main' branch"
echo "   • Enable: Require PR before merging"
echo "   • Enable: Require status checks"
echo "   • Enable: Restrict pushes that create large files"
echo "   • Disable: Allow force pushes"
echo ""

echo -e "${BLUE}2. Repository Settings${NC}"
echo "   • Go to Settings → General"
echo "   • Disable: Allow merge commits (optional)"
echo "   • Enable: Always suggest updating PR branches"
echo "   • Enable: Automatically delete head branches"
echo ""

echo -e "${BLUE}3. Security & Analysis${NC}"
echo "   • Go to Settings → Security & analysis"
echo "   • Enable: Dependency graph"
echo "   • Enable: Dependabot alerts"
echo "   • Enable: Dependabot security updates"
echo "   • Enable: Secret scanning"
echo ""

echo -e "${BLUE}4. Actions Permissions${NC}"
echo "   • Go to Settings → Actions → General"
echo "   • Allow GitHub Actions: Selected actions and reusable workflows"
echo "   • Allow actions created by GitHub: ✅"
echo "   • Allow actions by Marketplace verified creators: ✅"
echo ""

echo -e "${BLUE}5. Repository Labels${NC}"
echo "   • Go to Issues → Labels"
echo "   • Create labels as documented in .github/labels.md"
echo "   • Or use GitHub CLI: gh label create [name] --color [color]"
echo ""

echo -e "${YELLOW}📋 Files Created${NC}"
echo "The following security files have been created:"
echo ""
echo "   📁 .github/"
echo "   ├── 🔒 workflows/security.yml"
echo "   ├── 🔍 workflows/code-quality.yml"
echo "   ├── 🤖 workflows/auto-review.yml"
echo "   ├── 🛡️ dependabot.yml"
echo "   ├── 📋 pull_request_template.md"
echo "   ├── 🏷️ labels.md"
echo "   ├── 📖 branch-protection.md"
echo "   └── ISSUE_TEMPLATE/"
echo "       └── 🔧 config.yml (updated)"
echo ""
echo "   🛡️ SECURITY.md"
echo ""

echo -e "${GREEN}✅ Automated Security Features${NC}"
echo "Once you push these changes, you'll have:"
echo ""
echo "   🔍 Daily security scans"
echo "   🤖 Automated dependency updates"
echo "   📋 PR quality checks"
echo "   🏷️ Automatic labeling"
echo "   🚨 Spam detection"
echo "   🔒 Secret scanning"
echo "   📏 File size validation"
echo "   💬 Automated review comments"
echo ""

echo -e "${YELLOW}⚡ Next Steps${NC}"
echo ""
echo "1. Commit and push these changes:"
echo "   git add ."
echo "   git commit -m '🛡️ Add comprehensive repository security'"
echo "   git push origin main"
echo ""
echo "2. Complete the manual setup steps above"
echo ""
echo "3. Test the security workflows by creating a test PR"
echo ""
echo "4. Update the SECURITY.md file with your contact information"
echo ""

echo -e "${BLUE}🔗 Quick Links${NC}"
echo "After pushing, visit these URLs to complete setup:"
echo ""
echo "• Branch Protection: $REPO_URL/settings/branches"
echo "• Security Settings: $REPO_URL/settings/security_analysis"
echo "• Actions Settings: $REPO_URL/settings/actions"
echo "• Labels: $REPO_URL/labels"
echo ""

echo -e "${GREEN}🎉 Security setup complete!${NC}"
echo "Your repository will be protected against unauthorized access and spam."
echo ""

# Check if GitHub CLI is available
if command -v gh &> /dev/null; then
    echo -e "${BLUE}💡 Tip: You have GitHub CLI installed!${NC}"
    echo "You can use these commands to speed up setup:"
    echo ""
    echo "# Enable vulnerability alerts"
    echo "gh api repos/:owner/:repo --method PATCH --field security_and_analysis[vulnerability_alerts][enabled]=true"
    echo ""
    echo "# Enable secret scanning"
    echo "gh api repos/:owner/:repo --method PATCH --field security_and_analysis[secret_scanning][enabled]=true"
    echo ""
fi

echo "📖 For more information, see .github/branch-protection.md"
