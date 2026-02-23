#!/bin/bash

echo "🌐 CLOUD DEPLOYMENT AUTOMATION"
echo "================================="
echo

# Create a simple GitHub Pages deployment
echo "📂 Creating GitHub Pages deployment..."
mkdir -p github-pages
cp index.html github-pages/
cp netlify.toml github-pages/

echo "✅ GitHub Pages files ready in github-pages/"
echo

# Create Netlify deployment package
echo "📦 Creating Netlify deployment package..."
mkdir -p netlify-deploy
cp index.html netlify-deploy/
cp netlify.toml netlify-deploy/

echo "✅ Netlify deployment ready in netlify-deploy/"
echo

# Create Vercel deployment
echo "🔥 Creating Vercel deployment..."
mkdir -p vercel-deploy
cp index.html vercel-deploy/
cat > vercel-deploy/vercel.json << EOF
{
  "version": 2,
  "name": "personal-command-center",
  "builds": [
    { "src": "index.html", "use": "@vercel/static" }
  ],
  "routes": [
    { "src": "/(.*)", "dest": "/index.html" }
  ]
}
EOF

echo "✅ Vercel deployment ready in vercel-deploy/"
echo

# Display URLs and instructions
echo "🚀 DEPLOYMENT OPTIONS:"
echo "======================"
echo
echo "1. 📱 NETLIFY DROP (Instant):"
echo "   - Go to: https://app.netlify.com/drop"
echo "   - Drag: netlify-deploy/index.html"
echo "   - Get instant URL!"
echo
echo "2. ⚡ GITHUB PAGES:"
echo "   - Create repo at: https://github.com/new"
echo "   - Upload files from: github-pages/"
echo "   - Enable Pages in Settings"
echo
echo "3. 🔥 VERCEL:"
echo "   - Go to: https://vercel.com"
echo "   - Upload: vercel-deploy/ folder"
echo "   - Get instant deployment"
echo
echo "4. 🌊 SURGE.SH:"
echo "   - npm install -g surge"
echo "   - cd netlify-deploy"
echo "   - surge . your-domain.surge.sh"
echo
echo "🔑 Password for all deployments: goldfish"
echo
echo "✅ All deployment packages are ready!"

# Try to open URLs for convenience
if command -v open >/dev/null 2>&1; then
    echo
    echo "🌐 Opening deployment sites..."
    open "https://app.netlify.com/drop"
    sleep 2
    open "https://vercel.com"
fi