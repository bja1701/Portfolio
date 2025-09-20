#!/bin/bash
# GitHub Pages Deployment Preparation Script

echo "🚀 Preparing your portfolio for GitHub Pages deployment..."
echo ""

# Check if we're in the right directory
if [ ! -f "index.html" ]; then
    echo "❌ Please run this script from the website_portfolio directory"
    exit 1
fi

echo "📁 Current directory structure:"
find . -type f -name "*.html" -o -name "*.css" -o -name "*.js" -o -name "*.md" | head -20
echo ""

echo "✅ Checking file structure for GitHub Pages compatibility..."

# Check for required files
if [ -f "index.html" ]; then
    echo "✅ index.html found (required for GitHub Pages)"
else
    echo "❌ index.html missing (required for GitHub Pages)"
fi

if [ -d "css" ] && [ -f "css/style.css" ]; then
    echo "✅ CSS files properly organized"
else
    echo "⚠️  CSS files may need reorganization"
fi

if [ -d "js" ] && [ -f "js/script.js" ]; then
    echo "✅ JavaScript files properly organized"
else
    echo "⚠️  JavaScript files may need reorganization"
fi

if [ -d "assets" ]; then
    echo "✅ Assets directory found"
else
    echo "⚠️  Assets directory missing"
fi

echo ""
echo "🔧 GitHub Pages Deployment Steps:"
echo ""
echo "1️⃣  CREATE GITHUB REPOSITORY:"
echo "   - Go to github.com and create new repository"
echo "   - Name it: bja1701.github.io (recommended)"
echo "   - Make it PUBLIC (required for free GitHub Pages)"
echo ""
echo "2️⃣  UPLOAD YOUR FILES:"
echo "   - Drag and drop all files from this directory"
echo "   - Or use git commands (see GITHUB_PAGES_GUIDE.md)"
echo ""
echo "3️⃣  ENABLE GITHUB PAGES:"
echo "   - Go to repository Settings → Pages"
echo "   - Source: Deploy from branch 'main', root folder"
echo "   - Your site will be live at: https://bja1701.github.io/[repo-name]"
echo ""
echo "📖 For detailed instructions, see: GITHUB_PAGES_GUIDE.md"
echo ""

# Create .gitignore for GitHub
echo "📝 Creating .gitignore for GitHub repository..."
cat > .gitignore << 'EOF'
# macOS
.DS_Store
.DS_Store?
._*
.Spotlight-V100
.Trashes
ehthumbs.db
Thumbs.db

# Windows
Thumbs.db
ehthumbs.db
Desktop.ini

# IDE/Editor files
.vscode/
.idea/
*.swp
*.swo
*~

# Temporary files
*.tmp
*.temp
.cache/

# Log files
*.log

# Node modules (if you add them later)
node_modules/

# Environment files
.env
.env.local
.env.production
EOF

echo "✅ Created .gitignore file"

# Create a deployment checklist
echo "📋 Creating deployment checklist..."
cat > DEPLOYMENT_CHECKLIST.md << 'EOF'
# 🚀 GitHub Pages Deployment Checklist

## Pre-Deployment (Complete these first)

- [ ] **Replace "Your Name"** with your actual name throughout the website
- [ ] **Add profile photo** as `assets/images/profile-photo.jpg` (400x400px recommended)
- [ ] **Update contact information** (email, GitHub username, LinkedIn profile)
- [ ] **Add your actual projects** or customize the sample projects
- [ ] **Add project screenshots** to `assets/images/` folder
- [ ] **Add your resume** as `assets/your-resume.pdf`
- [ ] **Test website locally** by opening `index.html` in browser

## GitHub Repository Setup

- [ ] **Create GitHub repository** (preferably named `[username].github.io`)
- [ ] **Make repository PUBLIC** (required for free GitHub Pages)
- [ ] **Upload all website files** to the repository
- [ ] **Verify all files uploaded correctly**

## GitHub Pages Configuration

- [ ] **Go to repository Settings → Pages**
- [ ] **Set source to "Deploy from branch"**
- [ ] **Select "main" branch and "/ (root)" folder**
- [ ] **Wait 5-10 minutes for deployment**
- [ ] **Visit your live site** at the provided URL

## Post-Deployment Testing

- [ ] **Check website loads** at GitHub Pages URL
- [ ] **Test all navigation links** work correctly
- [ ] **Verify images display** properly
- [ ] **Test responsive design** on mobile/tablet
- [ ] **Check external links** (GitHub, LinkedIn, email)
- [ ] **Test resume download** button
- [ ] **Verify contact information** is correct

## Professional Setup

- [ ] **Add site URL to resume** and LinkedIn profile
- [ ] **Update repository description** with live site link
- [ ] **Pin repository** on your GitHub profile
- [ ] **Share with professors/mentors** for feedback
- [ ] **Include in internship applications**

## Optional Enhancements

- [ ] **Custom domain** setup (if you have one)
- [ ] **Google Analytics** for visitor tracking
- [ ] **Meta tags optimization** for better SEO
- [ ] **Favicon** creation and implementation
- [ ] **Performance optimization** (image compression, etc.)

## Maintenance

- [ ] **Regular updates** with new projects
- [ ] **Keep contact information current**
- [ ] **Monitor site performance** and fix any issues
- [ ] **Backup important files** regularly

---

**Your website URL will be:** `https://[your-username].github.io/[repository-name]`

**Estimated setup time:** 15-30 minutes
**Time until live:** 5-10 minutes after GitHub Pages activation
EOF

echo "✅ Created deployment checklist (DEPLOYMENT_CHECKLIST.md)"
echo ""

echo "🎉 Your portfolio is ready for GitHub Pages!"
echo ""
echo "📋 Next steps:"
echo "   1. Complete items in DEPLOYMENT_CHECKLIST.md"
echo "   2. Follow GITHUB_PAGES_GUIDE.md for detailed setup"
echo "   3. Create your GitHub repository"
echo "   4. Upload files and enable GitHub Pages"
echo ""
echo "🌟 Your professional portfolio will be live in minutes!"
echo ""
echo "💡 Pro tip: Use bja1701.github.io as your repository name"
echo "   This makes your site available at https://bja1701.github.io"
EOF