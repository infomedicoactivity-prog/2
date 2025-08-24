#!/bin/bash

echo "Preparing MedicoActivity files for new GitHub repository..."

# Create a clean directory for the new repository
rm -rf medicoactivity-deploy
mkdir medicoactivity-deploy
cd medicoactivity-deploy

# Initialize git repository
git init
git branch -M main

# Copy essential files for GitHub Pages
cp ../index.html .
cp ../CNAME .

# Create a README for the repository
cat > README.md << 'EOF'
# MedicoActivity

Professional healthcare collaboration platform connecting pharmaceutical companies, medical device manufacturers, CROs, and doctors for marketing, research, and collaboration opportunities.

## Website

Live at: https://medicoactivity.com

## Features

- Professional medical-themed design
- Company partnership forms
- Doctor registration system
- Contact information and LinkedIn integration
- Mobile responsive design
- SEO optimized

## Deployment

This site is deployed using GitHub Pages with a custom domain (medicoactivity.com).

## Contact

- Email: info.medicoactivity@gmail.com
- Phone: +91 7019580374
- Address: #140, Garebhavipalya, Bangalore 560068, India
- LinkedIn: https://www.linkedin.com/in/medico-activity-b97831369

© 2025 MedicoActivity. All rights reserved.
EOF

# Add and commit files
git add .
git commit -m "Initial commit: MedicoActivity healthcare collaboration platform"

echo ""
echo "✅ Repository prepared successfully!"
echo ""
echo "Files included:"
echo "- index.html (complete styled website)"
echo "- CNAME (domain configuration)"
echo "- README.md (project documentation)"
echo ""
echo "Next steps:"
echo "1. Add your new repository as remote:"
echo "   git remote add origin https://github.com/yourusername/your-new-repo-name.git"
echo ""
echo "2. Push to GitHub:"
echo "   git push -u origin main"
echo ""
echo "3. Enable GitHub Pages in repository Settings → Pages"
echo "   - Source: Deploy from a branch"
echo "   - Branch: main"
echo "   - Folder: / (root)"
echo ""
echo "4. Your styled website will be live at medicoactivity.com"

cd ..