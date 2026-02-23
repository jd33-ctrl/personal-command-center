#!/bin/bash

echo "🌐 GITHUB PAGES DEPLOYMENT HELPER"
echo "=================================="
echo

# Create a deployment-ready repository structure
mkdir -p pages-deployment
cd pages-deployment

# Copy the application
cp ../index.html .

# Create README for GitHub
cat > README.md << 'EOF'
# 🎯 Personal Command Center

Your AI-powered productivity and task management system, now deployed on GitHub Pages!

## 🚀 Features

- 🔒 Secure password protection
- 🤖 Intelligent AI assistant
- ⚡ Quick task and note creation
- 📊 Real-time analytics dashboard
- 🎯 Complete task management system
- 📝 Cloud-synced knowledge base
- 📱 Mobile-responsive design
- 🌐 Global accessibility

## 🔑 Access

**URL:** https://yourusername.github.io/personal-command-center/
**Password:** `goldfish`

## 🎮 Usage

Try these AI commands:
- "Add task: Review weekly goals"
- "Create note: Important insights"
- "Help me get organized"
- "What should I focus on?"
- "Show my analytics"

## 🚀 Deployment

This app is deployed using GitHub Pages and is fully functional as a static web application.

---

*Powered by AI • Secured by Design • Globally Accessible*
EOF

# Create .gitignore
cat > .gitignore << 'EOF'
.DS_Store
node_modules/
*.log
.env
EOF

# Initialize git repository
git init
git add .
git commit -m "🚀 Initial deployment of Personal Command Center

Features:
- AI-powered task management
- Secure password protection (password: goldfish)
- Real-time analytics dashboard
- Cloud-synced data storage
- Mobile-responsive design
- Global accessibility

Ready for GitHub Pages deployment!"

echo "✅ Git repository initialized!"
echo
echo "🚀 NEXT STEPS:"
echo "1. Create a new repository at: https://github.com/new"
echo "2. Name it: personal-command-center"
echo "3. Run these commands:"
echo
echo "   cd /Users/pikaboo/.openclaw/workspace/cloud-deploy/pages-deployment"
echo "   git remote add origin https://github.com/YOURUSERNAME/personal-command-center.git"
echo "   git branch -M main"
echo "   git push -u origin main"
echo
echo "4. Go to Settings → Pages → Deploy from main branch"
echo "5. Your URL will be: https://YOURUSERNAME.github.io/personal-command-center/"
echo
echo "🔑 Password: goldfish"
echo
echo "⚡ ALTERNATIVE - Manual Upload:"
echo "Just upload the index.html file to your GitHub repo and enable Pages!"

cd ..
echo
echo "📁 Repository ready at: cloud-deploy/pages-deployment/"