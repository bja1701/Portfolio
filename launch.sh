#!/bin/bash
# Portfolio Website Quick Start Script

echo "🚀 Setting up your Portfolio Website..."
echo ""

# Check if we're in the right directory
if [ ! -f "index.html" ]; then
    echo "❌ Please run this script from the website_portfolio directory"
    exit 1
fi

echo "✅ Found portfolio files!"
echo ""

# Check for a web browser
if command -v google-chrome &> /dev/null; then
    BROWSER="google-chrome"
elif command -v firefox &> /dev/null; then
    BROWSER="firefox"
elif command -v chromium &> /dev/null; then
    BROWSER="chromium"
else
    echo "⚠️  No web browser found. Please open index.html manually in your browser."
    exit 1
fi

echo "🌐 Opening your portfolio website in $BROWSER..."
echo ""

# Open the website
$BROWSER index.html &

echo "✨ Your portfolio website is now open!"
echo ""
echo "📝 Next Steps:"
echo "1. Replace 'Your Name' with your actual name throughout the site"
echo "2. Add your professional headshot as assets/images/profile-photo.jpg"
echo "3. Update project descriptions with your actual projects"
echo "4. Add project screenshots to assets/images/"
echo "5. Update all contact links (email, GitHub, LinkedIn)"
echo "6. Add your resume PDF to assets/your-resume.pdf"
echo ""
echo "📖 Check README.md for detailed customization instructions!"
echo ""
echo "🎯 Good luck with your internship applications! 🚀"